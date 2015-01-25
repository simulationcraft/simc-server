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
simc_iterations=10000
if [ -n "${simc_iterations_override}" ]; then
  simc_iterations=${simc_iterations_override}
fi

# Other options
other_options="thread_priority=low  hosted_html=1 disable_set_bonuses=1"


SIMC_CLI_PATH="/var/lib/jenkins/jobs/simc-raid-reports/workspace/engine"
SIMC_PROFILES_PATH="/var/lib/jenkins/jobs/simc-raid-reports/workspace/profiles"
SIMC_OUTPUT_PATH="/simc/reports"

${SIMC_CLI_PATH}/simc Raid_T17P.simc iterations=${simc_iterations} html=${SIMC_OUTPUT_PATH}/Raid_T17P.html threads=${available_cpus} ${other_options} > ${SIMC_OUTPUT_PATH}/Raid_T17P.txt
${SIMC_CLI_PATH}/simc Raid_T17N.simc iterations=${simc_iterations} html=${SIMC_OUTPUT_PATH}/Raid_T17N.html threads=${available_cpus} ${other_options} > ${SIMC_OUTPUT_PATH}/Raid_T17N.txt
${SIMC_CLI_PATH}/simc Raid_T17M.simc iterations=${simc_iterations} html=${SIMC_OUTPUT_PATH}/Raid_T17M.html threads=${available_cpus} ${other_options} > ${SIMC_OUTPUT_PATH}/Raid_T17M.txt

# Aoe Sim
aoe_options="desired_targets=4 max_time=300"
${SIMC_CLI_PATH}/simc aoe_Raid_T17N.simc ${aoe_options} iterations=${simc_iterations} html=${SIMC_OUTPUT_PATH}/Raid_T17N_AOE.html threads=${available_cpus} ${other_options} > ${SIMC_OUTPUT_PATH}/Raid_T17N_AOE.txt
