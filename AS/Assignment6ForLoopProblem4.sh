#!/bin/bash

#read
prime(){
number=$1
i=2
flag=0
#checkno=$(($number/2))
#echo $checkno
for ((i=2;i<=$(($number/2));i++))
do
#	no=$(($number % $i))
	if [ $(( $number % $i )) -eq 0 ]
	then
		flag=1
		return 0
	fi
	
done
if [ $flag -eq 0 ]
then
	return 1
else
	return 0
fi
}

read -p "Enter the lower range" LowerNumber
read -p "Enter the high range" HighNumber
for((j=$LowerNumber;j<=$HighNumber;j++))
do
prime $j
ret=$?
if [ $ret -eq 1 ]
then
	echo "Prime number" $j
fi
done

