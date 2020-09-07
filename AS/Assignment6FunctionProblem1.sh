#!/bin/bash -x


echo "1-Celsius to Fahrenheit"
echo "2-Fahrenheit to Celsius"

read -p "Enter Your Choice" choice
read -p "Enter the Number" Number
case $choice in
	1 )	degF=`echo $Number | awk '{print $1*(9/5)+32}'`
		echo "Converted "
		echo $degF
		;;
	2 )	degC=`echo $Number | awk '{print (($1-32) * (5/9)))}'`
		echo "Converted "
		echo $degC
		;;
	*) echo "You entered wrong choice"
esac
