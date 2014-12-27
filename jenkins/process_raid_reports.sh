#!/bin/bash

NOW=$(date +%s)

cp /simc/reports/Raid_T17M.html /simc/reports/archive_html/${NOW}_Raid_T17M.html
gzip /simc/reports/archive_html/${NOW}_Raid_T17M.html

cp /simc/reports/Raid_T17M.html /simc/reports/archive_html/${NOW}_Raid_T17N.html
gzip /simc/reports/archive_html/${NOW}_Raid_T17N.html

cp /simc/reports/Raid_T17M.html /simc/reports/archive_html/${NOW}_Raid_T17P.html
gzip /simc/reports/archive_html/${NOW}_Raid_T17P.html

cp /simc/reports/Raid_T17M.txt /simc/reports/archive_txt/${NOW}_Raid_T17M.txt
gzip /simc/reports/archive_txt/${NOW}_Raid_T17M.txt

cp /simc/reports/Raid_T17M.txt /simc/reports/archive_txt/${NOW}_Raid_T17N.txt
gzip /simc/reports/archive_txt/${NOW}_Raid_T17N.txt

cp /simc/reports/Raid_T17M.txt /simc/reports/archive_txt/${NOW}_Raid_T17P.txt
gzip /simc/reports/archive_txt/${NOW}_Raid_T17P.txt

# Work on archive git repository
cd /simc/reports
git add -A
git commit -m"Reports from ${NOW}"
