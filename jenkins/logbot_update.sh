#!/bin/bash

# Exit on errors
set -e

SRC_PATH="/var/lib/jenkins/jobs/server_scripts/workspace/logbot/src/*"
DEST_PATH="/srv/logbot/logbot/"
cp -Rf ${SRC_PATH} ${DEST_PATH}
