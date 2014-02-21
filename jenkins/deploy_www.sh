#!/bin/bash

# Exit on errors
set -e

# TODO: better deployment strategy
cp -r ${JENKINS_HOME}/jobs/www-deployment/workspace/www /simc/www
