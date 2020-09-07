#!/bin/bash 
read -p "Enter the Number that you want to convert" Number
echo "Welcome to Unit Conversion"
echo "1-Feet to Inch"
echo "2-Feet to Meter"
echo "3-Inch to Feet"
echo "4-Meter to feet"
read -p "Enter the Choice as discribed above" choice

case $choice in
	1 )
		ConvertedNumber=`echo $Number | awk '{print $1*12}'`
		echo "Number"$Number"Feet in inches=" $ConvertedNumber
		;;
	2 )
		ConvertedNumber=`echo $Number | awk '{print $1*0.0348}'`
		echo "Number"$Number"Feet in inches=" $ConvertedNumber
                ;;
	3 )
		ConvertedNumber=`echo $Number | awk '{print $1*0.08333}'`
                echo "Number"$Number"Feet in inches=" $ConvertedNumber
                ;;
	4 )
		ConvertedNumber=`echo $Number | awk '{print $1*3.28084}'`
                echo "Number"$Number"Feet in inches=" $ConvertedNumber
                ;;
	*)
		echo "You entered wrong choice"
esac
