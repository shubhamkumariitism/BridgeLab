#!/bin/bash 

#read 
headcount=0
tailcount=0
i=1
while [[ ($headcount -ne 11) && ($tailcount -ne 11) ]]
do 
		
		Outcome=$((RANDOM%2))
		if [[ $Outcome -eq 0 ]]
		then
			headcount=$(($headcount+1))
			echo "Current Head Count" $headcount
		else
			tailcount=$(($tailcount+1))
			echo "Current Tail Count" $tailcount
		fi		
done
if [[ $headcount -eq 11 ]]
then
	echo "Head Wins"
fi

if [[ $tailcount -eq 11 ]]
then
	echo "Tail Wins"
fi
