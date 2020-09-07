#!/bin/bash

#read
Output=""
read -p "Enter the value" Number
for((i=1;i<=$Number;i++))
do
	if [ $i -eq $Number ]
	then
		echo "1/"$i;
	else
		echo "1/"$i;
		echo "+";

	fi
done

