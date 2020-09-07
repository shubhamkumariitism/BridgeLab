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
palindrome (){
number=$1
numbercopy=$number
r=0
while [ $numbercopy -gt 0 ]
do
	a=$(($numbercopy % 10))
	numbercopy=$(($numbercopy / 10))
	r=$(($r*10+$a))

done
if [ $number -eq $r ]
then
	return 1
else
	return 0
fi
}

read -p "Enter the number" Number

palindrome $Number

ret=$?

if [ $ret -eq 1 ]
then 
	prime $Number
	retlast=$?
	if [ $retlast -eq 1 ]
	then
		echo "Number is Palindrome as well as Prime"
	else
		echo "Number is Palindrome but not prime"
	fi
else
	echo "Not Palindrome so No need to check Prime"
fi
