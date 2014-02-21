#!/bin/bash

# Exit on errors
set -e

# Gather cpu count, minus one.
#   One CPU is intentionally left unused to avoid overloading.
available_cpus=$(lscpu -p | tail -1 | cut -d , -f 1)

# If the count is 0, we'll have to use the single available CPU
if [ ${available_cpus} -lt 1 ]; then
  available_cpus=1
fi

# Allow whatever launches the script to override the CPU detection
if [ -n "${cpu_count_override}" ]; then
  available_cpus=${cpu_count_override}
fi

# Get QT version from environment and set chroot, default to qt4
if [ -z "${qt_version}" ]; then
  qt_version=5
fi

case "${qt_version}" in
  4)
    chroot="precise"
    ;;
  5)
    chroot="saucy"
    ;;
  *)
    echo "Unsupported qt version: ${qt_version}"
    exit
    ;;
esac

# Make sure we're in the source root
if [ ! -d 'engine' ] || [ ! -d 'qt' ]; then
  echo 'Run from simulationcraft sources root!'
  exit 1
fi

# Check for build dependencies
if ! schroot -c "${chroot}" -- which g++ make qmake > /dev/null; then
  echo 'You need g++, qmake and make to be available.'
  exit 1
fi

# Build
schroot -c "${chroot}" -- qmake simcqt.pro
schroot -c "${chroot}" -- make -j${available_cpus}

