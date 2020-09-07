#!/bin/bash -x

#read
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
	echo "Pailndrome"
else
	echo "Not Palindrome"
fi
