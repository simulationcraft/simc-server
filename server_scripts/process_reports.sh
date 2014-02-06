#!/bin/bash
cd /simc/reports
cp /simc/reports/Raid_T15H.html /simc/www
cp /simc/reports/Raid_T16H.html /simc/www

NOW=$(date +%s)
mv /simc/reports/Raid_T15H.html /simc/reports/archive/${NOW}_Raid_T15H.html
mv /simc/reports/Raid_T16H.html /simc/reports/archive/${NOW}_Raid_T16H.html
