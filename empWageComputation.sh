#!/bin/bash
echo "Welcome to empWageCompuation.sh"
#UC1
declare -A dailyWageArray
PresentOrAbsent=$((RANDOM%3))
#UC2
WageperHour=20
FullDayHour=8
DailyWageEmployeeFullDay=$(( $WageperHour * $FullDayHour ))
#UC3
PartTimeHour=8
DailyWageEmployeePartDay=$(( $WageperHour * $PartTimeHour ))

