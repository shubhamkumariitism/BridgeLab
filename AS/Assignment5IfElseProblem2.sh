#!/bin/bash -x

read -p "Enter the date of month" day
if [[ $day -gt 31 || $day -lt 0 ]]
then
        echo "False"
        exit 0
fi

read -p "Enter the month in number format like For JAN enter:1 for FEB:2" month

if [[ $month -lt 3 || $month -gt 6 ]]
then
	echo "False"
	exit 0
fi

if [[ ($month -eq 3 && $day -lt 20) || ($month -eq 6 && $day -gt 20) ]]
then
	echo "False"
	exit
fi
if [[ ($month -eq 3 || $month -eq 5) && $month -lt 31 ]]
then
	echo "True"
	exit 0
fi

if [[ ($month -eq 4 || $month -eq 6) && $month -lt 30 ]]
then
	echo "True"
	exit 0
fi

echo "false"
