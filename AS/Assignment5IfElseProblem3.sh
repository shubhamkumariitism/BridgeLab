#!/bin/bash -x


read -p "Enter a year" Year

if [[ $(( $Year % 400 )) -eq 0 ]]
then
	echo "Year Is leap Year"
	exit 0
fi
if [[ $(($Year % 100 )) -eq 0 ]]
then
	echo "Year is Not Leap Year"
	exit 0;
fi
if [[ $((Year %4 )) -eq 0 ]]
then
echo "Year is Leap Year"
fi
