#!/bin/sh

set -e

SAVE_LOGS=4
N_LOGS=$(ls -l *.simc-cli|wc -l)

if [ ${N_LOGS} -gt ${SAVE_LOGS} ]; then
  REMOVE_LOG_FILES=$(ls -1rt *.simc-cli|head -n $((${N_LOGS}-${SAVE_LOGS})))
  rm ${REMOVE_LOG_FILES}
fi

