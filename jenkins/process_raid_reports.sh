#!/bin/bash

NOW=$(date +%s)
cp /simc/reports/Raid_T15H.html /simc/reports/archive_html/${NOW}_Raid_T15H.html
cp /simc/reports/Raid_T16H.html /simc/reports/archive_html/${NOW}_Raid_T16H.html

cp /simc/reports/Raid_T15H.txt /simc/reports/archive_txt/${NOW}_Raid_T15H.txt
gzip /simc/reports/archive_txt/${NOW}_Raid_T15H.txt
cp /simc/reports/Raid_T16H.txt /simc/reports/archive_txt/${NOW}_Raid_T16H.txt
gzip /simc/reports/archive_txt/${NOW}_Raid_T16H.txt

# Work on archive git repository
cd /simc/reports
git add -A
git commit -m"Reports from ${NOW}"
