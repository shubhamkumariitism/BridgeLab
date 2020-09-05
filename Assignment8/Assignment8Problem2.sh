#!/bin/bash 

declare -A DOBDictionary

for((i=1;i<=50;i++))
do
	DateofMonth=`shuf -i 1-12 -n 1`
	year=`shuf -i 92-93 -n 1`
	DateofBirth=$DateofMonth"/"$year"of ["$i"th person]"
	DOBDictionary[$DateofMonth]+=$DateofBirth
done
for((i=1;i<=12;i++))
do
	echo "Persons with DOB,which has date of month=" $i
	echo ${DOBDictionary[$i]}
done
