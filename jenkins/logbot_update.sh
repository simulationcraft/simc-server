#!/bin/bash

# Exit on errors
set -e

SRC_PATH="/var/lib/jenkins/jobs/logbot-deployment/workspace/logbot/src/*"
DEST_PATH="/srv/logbot/logbot/"
cp -Rf ${SRC_PATH} ${DEST_PATH}
