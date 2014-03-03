#!/bin/bash

# Exit on errors
set -e

jekyll build --source ${JENKINS_HOME}/jobs/www-deployment/workspace/jekyll/* --destination /simc/www/jekyll/
