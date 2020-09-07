#!/bin/bash -x 

read -p "Enter the number of times you want the coin will be toss" Range
i=0
TotalHeadCount=0
TotalTailCount=0
flag=0
while [[ ($i -lt $Range) && (($TotalHeadCount -lt 22) || ($TotalTailCount -lt 22)) ]]
do
	Outcome=$((RANDOM%2))
	if [[ $Outcome -eq 1 ]]
	then
		TotalHeadCount=$(($TotalHeadCount+1))
	else
		TotalTailCount=$(($TotalTailCount+1))
	fi
	if [[ $TotalHeadCount -eq $TotalTailCount ]]
	then
    		flag=1
   		while [[ (($(($TotalHeadCount-$TotalTailCount)) -lt 2) && ($(($TotalHeadCount-$TotalTailCount)) -ge 0)) || (($(($TotalTailCount-$TotalHeadCount)) -lt 2) && ($(($TotalTailCount-$TotalHeadCount)) -ge 0)) ]]
  		do
			Outcome=$((RANDOM%2))
			if [[ $Outcome -eq 1 ]]
			then
        			TotalHeadCount=$(($TotalHeadCount+1))
			else
        			TotalTailCount=$(($TotalTailCount+1))
			fi

   		done
	fi
	if [[ $flag -eq 1 ]]
	then
		echo "Beacuse of tie at some point"
		echo "Total number of Head count" $TotalHeadCount
		echo "Total number of Tail Count " $TotalTailCount
		exit
	fi
	i=$(($i+1))
done

echo "The loop run till reaches clear wining with below score"
echo "Total number of Head count" $TotalHeadCount
echo "Total number of Tail Count " $TotalTailCount

