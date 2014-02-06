#!/bin/bash
cd /simc/src
iterations=10000
/simc/build/./simc Raid_T15H.simc iterations=${iterations} html=/simc/reports/Raid_T15H.html threads=2 > /simc/logs/Raid_T15H_stdo.txt
/simc/build/./simc Raid_T16H.simc iterations=${iterations} html=/simc/reports/Raid_T16H.html threads=2 > /simc/logs/Raid_T16H_stdo.txt

/simc/scripts/process_reports.sh
