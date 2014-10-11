#!/bin/bash

NOW=$(date +%s)

cp /simc/reports/Raid_T16M.html /simc/reports/archive_html/${NOW}_Raid_T16M.html
gzip /simc/reports/archive_html/${NOW}_Raid_T16M.html

cp /simc/reports/Raid_T17M.html /simc/reports/archive_html/${NOW}_Raid_T17M.html
gzip /simc/reports/archive_html/${NOW}_Raid_T17M.html

cp /simc/reports/Raid_T16M.txt /simc/reports/archive_txt/${NOW}_Raid_T16M.txt
gzip /simc/reports/archive_txt/${NOW}_Raid_T16M.txt

cp /simc/reports/Raid_T17M.txt /simc/reports/archive_txt/${NOW}_Raid_T17M.txt
gzip /simc/reports/archive_txt/${NOW}_Raid_T17M.txt

# Work on archive git repository
cd /simc/reports
git add -A
git commit -m"Reports from ${NOW}"
