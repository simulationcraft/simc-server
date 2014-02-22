#!/bin/bash

# If the count is 0, we'll have to use the single available CPU
if [ ${available_cpus} -lt 1 ]; then
  available_cpus=1
fi

# Allow whatever launches the script to override the CPU detection
if [ -n "${cpu_count_override}" ]; then
  available_cpus=${cpu_count_override}
fi

# Iterations
if [ ${simc_iterations} -lt 1 ]; then
  simc_iterations=10000
fi

if [ ${SIMC_CLI_PATH} -lt 1 ]; then
  SIMC_CLI_PATH="/var/lib/jenkins/jobs/simc-raid-reports/workspace/engine/simc"
fi

if [ ${SIMC_PROFILES_PATH} -lt 1 ]; then
  SIMC_PROFILES_PATH="/var/lib/jenkins/jobs/simc-raid-reports/workspace/profiles"
fi

if [ ${SIMC_OUTPUT_PATH} -lt 1 ]; then
  SIMC_OUTPUT_PATH="/simc/reports"
fi

${SIMC_CLI_PATH}/simc Raid_T15H.simc iterations=${simc_iterations} html=${SIMC_OUTPUT_PATH}/Raid_T15H.html threads=${available_cpus} hosted_html=1 > /simc/logs/Raid_T15H_stdo.txt
${SIMC_CLI_PATH}/simc Raid_T16H.simc iterations=${simc_iterations} html=${SIMC_OUTPUT_PATH}/Raid_T16H.html threads=${available_cpus} hosted_html=1 > /simc/logs/Raid_T16H_stdo.txt
