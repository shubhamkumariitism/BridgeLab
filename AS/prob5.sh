#!/bin/bash

CheckTwice(){
number=$1
#prevremainder=0
#currentremainder=0
flag=0
while [[ $number -ne 0 ]]
do
	if [[ flag -eq 0  ]]
	then
		flag=1
		prevRemainder=$(($number%10))
	else
		flag=2
		currentRemainder=$(($number%10))
		if [[ $prevRemainder -ne $currentRemainder ]]
		then
		return 0
		fi
	fi
number=$(($number/10))
done
if [[ flag -eq 2 ]]
then
return 1
fi
}

for (( i=1;i<200;i++ ))
do
CheckTwice $i
ret=$?
if [[ $ret -eq 1 ]]
then
echo "This Number has repeated  digits" $i
fi
done
