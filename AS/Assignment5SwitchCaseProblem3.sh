#!/bin/bash -x

echo "1 or 10 or 100 or 1000"
read -p "enter a number in from above choice" Number

case $Number in
	1 )	echo "Unit"
		;;
	10 )	echo "Ten"
		;;
	100 )	echo "Hundred"
		;;
	1000 )	echo "Thousand"
		;;
	* )
		echo "Entered more than 1000 or not selected from above choice"
esac
