#!/bin/bash

NOW=$(date -Iseconds -u)

REPORT=PR_Raid
cp /simc/reports/${REPORT}.html /simc/reports/archive_html/${NOW}_${REPORT}.html
gzip /simc/reports/archive_html/${NOW}_${REPORT}.html
cp /simc/reports/${REPORT}.txt /simc/reports/archive_txt/${NOW}_${REPORT}.txt
gzip /simc/reports/archive_txt/${NOW}_${REPORT}.txt

REPORT=T26_Raid
cp /simc/reports/${REPORT}.html /simc/reports/archive_html/${NOW}_${REPORT}.html
gzip /simc/reports/archive_html/${NOW}_${REPORT}.html
cp /simc/reports/${REPORT}.txt /simc/reports/archive_txt/${NOW}_${REPORT}.txt
gzip /simc/reports/archive_txt/${NOW}_${REPORT}.txt

REPORT=T27_Raid
cp /simc/reports/${REPORT}.html /simc/reports/archive_html/${NOW}_${REPORT}.html
gzip /simc/reports/archive_html/${NOW}_${REPORT}.html
cp /simc/reports/${REPORT}.txt /simc/reports/archive_txt/${NOW}_${REPORT}.txt
gzip /simc/reports/archive_txt/${NOW}_${REPORT}.txt

REPORT=T28_Raid
cp /simc/reports/${REPORT}.html /simc/reports/archive_html/${NOW}_${REPORT}.html
gzip /simc/reports/archive_html/${NOW}_${REPORT}.html
cp /simc/reports/${REPORT}.txt /simc/reports/archive_txt/${NOW}_${REPORT}.txt
gzip /simc/reports/archive_txt/${NOW}_${REPORT}.txt

REPORT=T28_5_Raid
cp /simc/reports/${REPORT}.html /simc/reports/archive_html/${NOW}_${REPORT}.html
gzip /simc/reports/archive_html/${NOW}_${REPORT}.html
cp /simc/reports/${REPORT}.txt /simc/reports/archive_txt/${NOW}_${REPORT}.txt
gzip /simc/reports/archive_txt/${NOW}_${REPORT}.txt
