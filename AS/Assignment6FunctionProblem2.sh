#!/bin/bash 

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

read -p "Enter the First Number" Number1
read -p "Enter the Second Number" Number2
palindrome $Number1
ret=$?

if [ $ret -eq 1 ]
then 
	echo "First number is Pailndrome"
else
	echo " First number Not Palindrome"
fi

palindrome $Number2
ret=$?

if [ $ret -eq 1 ]
then 
	echo "Second number is Pailndrome"
else
	echo " Second number Not Palindrome"
fi
