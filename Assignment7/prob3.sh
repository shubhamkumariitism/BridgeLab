#!/bin/bash -x
prime(){
number=$1
i=2
flag=0
#checkno=$(($number/2))
#echo $checkno
while [ $i -le $(($number/2)) ]
do
	no=$(($number % $i))
	if [ $no -eq 0 ]
	then
	return $i
	fi
i=$(($i + 1))
done
if [ $flag -eq 0 ]
then
	return $number
fi
}

read -p "Enter a number to get prime factor" Number
k=0;

while [[ $Number -ne 1 ]]
do
	prime $Number
	ret=$?
	PrimeFactors[$k]=$ret
	Number=$(($Number/$ret))
	k=$(($k+1))
done
echo "Prime Factors " ${PrimeFactors[@]}
