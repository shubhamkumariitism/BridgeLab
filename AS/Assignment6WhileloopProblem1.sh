#!/bin/bash 

#read 
read -p "Enter the value" Number
i=1
while [[ ($((2**$i)) -le 256) && ($i -le $Number) ]]
do 
		
		echo $((2**$i))
		i=$(($i+1))
done
