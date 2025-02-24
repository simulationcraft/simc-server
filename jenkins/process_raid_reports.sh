#!/bin/bash

NOW=$(date -Iseconds -u)

for REPORT in PR_Raid TWW1_Raid TWW2_Raid
do
    cp /simc/reports/${REPORT}.html /simc/reports/archive_html/${NOW}_${REPORT}.html
    gzip /simc/reports/archive_html/${NOW}_${REPORT}.html
    cp /simc/reports/${REPORT}.txt /simc/reports/archive_txt/${NOW}_${REPORT}.txt
    gzip /simc/reports/archive_txt/${NOW}_${REPORT}.txt
done
