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

# make build target
build_target=all

# Allow whatever launches the script to override the make build target
if [ -n "${build_target_override}" ]; then
  build_target=${build_target_override}
fi

# Make sure we're in the source root
if [ ! -d 'engine' ]; then
  echo 'Run from simulationcraft sources root!'
  exit 1
fi

# Check for build dependencies
if ! which g++ make > /dev/null; then
  echo 'You need both g++ and make to be available.'
  exit 1
fi

# Build
make CXX=clang++-4.0 DEBUG=1 SC_NO_NETWORKING=1 -C engine ${build_target} -j${available_cpus}

