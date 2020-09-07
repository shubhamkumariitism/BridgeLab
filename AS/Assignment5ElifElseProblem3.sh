#!/bin/bash -x

echo "1 or 10 or 100 or 1000"
read -p "enter a number in from above choice" Number

if [[ $Number -eq 1 ]]
then
	echo "Unit"
elif [[ $Number -eq 10 ]]
then
	echo "Ten"
elif [[	$Number -eq 100 ]]
then
	echo "Hundred"
elif [[ $Number -eq 1000 ]]
then
	echo "Thousand"
else
	echo "Entered more than 1000"
fi
