#!/bin/bash

NOW=$(date -Iseconds -u)

REPORT=Raid_T18N
cp /simc/reports/${REPORT}.html /simc/reports/archive_html/${NOW}_${REPORT}.html
gzip /simc/reports/archive_html/${NOW}_${REPORT}.html
cp /simc/reports/${REPORT}.txt /simc/reports/archive_txt/${NOW}_${REPORT}.txt
gzip /simc/reports/archive_txt/${NOW}_${REPORT}.txt

REPORT=Raid_T18H
cp /simc/reports/${REPORT}.html /simc/reports/archive_html/${NOW}_${REPORT}.html
gzip /simc/reports/archive_html/${NOW}_${REPORT}.html
cp /simc/reports/${REPORT}.txt /simc/reports/archive_txt/${NOW}_${REPORT}.txt
gzip /simc/reports/archive_txt/${NOW}_${REPORT}.txt

REPORT=Raid_T18M
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
