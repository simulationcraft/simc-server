#!/bin/bash

NOW=$(date -Iseconds -u)

REPORT=Raid_T19P
cp /simc/reports/${REPORT}.html /simc/reports/archive_html/${NOW}_${REPORT}.html
gzip /simc/reports/archive_html/${NOW}_${REPORT}.html
cp /simc/reports/${REPORT}.txt /simc/reports/archive_txt/${NOW}_${REPORT}.txt
gzip /simc/reports/archive_txt/${NOW}_${REPORT}.txt
