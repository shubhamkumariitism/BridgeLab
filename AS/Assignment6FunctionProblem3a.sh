#!/bin/bash -x

#read
prime(){
number=$1
i=2
flag=0
#checkno=$(($number/2))
#echo $checkno
while [ $i -le $(($number/2)) ]
do
#	no=$(($number % $i))
	if [ $(($number%$i)) -eq 0 ]
	then
	flag=1
	return 0
	fi
i=$(($i + 1))
done
if [ $flag -eq 0 ]
then
	return 1
else
	return 0
fi
}

read -p "Enter the number" Number

prime $Number

ret=$?

if [ $ret -eq 1 ]
then 
	echo "Prime number"
else
	echo " Not Prime number"
fi

