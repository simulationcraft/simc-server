#!/bin/bash

NOW=$(date -Iseconds -u)

#cp /simc/reports/Raid_T17M.html /simc/reports/archive_html/${NOW}_Raid_T17M.html
#gzip /simc/reports/archive_html/${NOW}_Raid_T17M.html

#cp /simc/reports/Raid_T17N.html /simc/reports/archive_html/${NOW}_Raid_T17N.html
#gzip /simc/reports/archive_html/${NOW}_Raid_T17N.html

#cp /simc/reports/Raid_T17P.html /simc/reports/archive_html/${NOW}_Raid_T17H.html
#gzip /simc/reports/archive_html/${NOW}_Raid_T17H.html

#cp /simc/reports/Raid_T17M.txt /simc/reports/archive_txt/${NOW}_Raid_T17M.txt
#gzip /simc/reports/archive_txt/${NOW}_Raid_T17M.txt

#cp /simc/reports/Raid_T17P.txt /simc/reports/archive_txt/${NOW}_Raid_T17H.txt
#gzip /simc/reports/archive_txt/${NOW}_Raid_T17H.txt

#cp /simc/reports/Raid_T17H_AOE.txt /simc/reports/archive_txt/${NOW}_Raid_T17H_AOE.txt
#gzip /simc/reports/archive_txt/${NOW}_Raid_T17H_AOE.txt

#cp /simc/reports/Raid_T17H_AddWaves.txt /simc/reports/archive_txt/${NOW}_Raid_T17H_AddWaves.txt
#gzip /simc/reports/archive_txt/${NOW}_Raid_T17H_AddWaves.txt

REPORT=RAID_T18N
cp /simc/reports/${REPORT}.html /simc/reports/archive_html/${NOW}_${REPORT}.html
gzip /simc/reports/archive_html/${NOW}_${REPORT}.html
cp /simc/reports/${REPORT}.txt /simc/reports/archive_txt/${NOW}_${REPORT}.txt
gzip /simc/reports/archive_txt/${NOW}_${REPORT}.txt

REPORT=RAID_T18H
cp /simc/reports/${REPORT}.html /simc/reports/archive_html/${NOW}_${REPORT}.html
gzip /simc/reports/archive_html/${NOW}_${REPORT}.html
cp /simc/reports/${REPORT}.txt /simc/reports/archive_txt/${NOW}_${REPORT}.txt
gzip /simc/reports/archive_txt/${NOW}_${REPORT}.txt

REPORT=Raid_T18H_AddWaves
cp /simc/reports/${REPORT}.html /simc/reports/archive_html/${NOW}_${REPORT}.html
gzip /simc/reports/archive_html/${NOW}_${REPORT}.html
cp /simc/reports/${REPORT}.txt /simc/reports/archive_txt/${NOW}_${REPORT}.txt
gzip /simc/reports/archive_txt/${NOW}_${REPORT}.txt

REPORT=Raid_T18H_AOE
cp /simc/reports/${REPORT}.html /simc/reports/archive_html/${NOW}_${REPORT}.html
gzip /simc/reports/archive_html/${NOW}_${REPORT}.html
cp /simc/reports/${REPORT}.txt /simc/reports/archive_txt/${NOW}_${REPORT}.txt
gzip /simc/reports/archive_txt/${NOW}_${REPORT}.txt
