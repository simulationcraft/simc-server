#!/bin/bash

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

# Iterations
simc_iterations=7500
if [ -n "${simc_iterations_override}" ]; then
  simc_iterations=${simc_iterations_override}
fi

# Other options
other_options="process_priority=low hosted_html=1"

SIMC_CLI_PATH="/var/lib/jenkins/jobs/simc-raid-reports/workspace/engine"
SIMC_PROFILES_PATH="/var/lib/jenkins/jobs/simc-raid-reports/workspace/profiles"
SIMC_OUTPUT_PATH="/simc/reports"

${SIMC_CLI_PATH}/simc T25_Raid.simc iterations=${simc_iterations} html=${SIMC_OUTPUT_PATH}/T25_Raid.html threads=${available_cpus} ${other_options} > ${SIMC_OUTPUT_PATH}/T25_Raid.txt
${SIMC_CLI_PATH}/simc DS_Dungeon.simc fight_style=DungeonSlice iterations=${simc_iterations} html=${SIMC_OUTPUT_PATH}/DS_DungeonSlice.html threads=${available_cpus} ${other_options} > ${SIMC_OUTPUT_PATH}/DS_DungeonSlice.txt

#${SIMC_CLI_PATH}/simc PR_Raid.simc iterations=${simc_iterations} html=${SIMC_OUTPUT_PATH}/PR_Raid.html threads=${available_cpus} ${other_options} > ${SIMC_OUTPUT_PATH}/PR_Raid.txt
