#!/bin/bash 

#read 
read -p "Enter the value" Number

for((i=0;i<=$Number;i++))
do 
	if [[ $((2**$i)) -le 256 ]]
	then
		echo $((2**$i))
	fi
done
