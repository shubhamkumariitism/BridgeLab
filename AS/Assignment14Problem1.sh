#!/bin/bash -x

#FirstandLastNamePattern="^[A-Z][a-z]+"
FirstandLastNamePattern="^[[:upper:]][[:lower:]]+"
#EmailPattern="[abc]+[.]([a-zA-Z]*)@[a-zA-Z]*[.][co]([.]in)$"
MobileNoPattern="[0-9]{2}[[:space:]]?[0-9]{10}"
read -p "Input the First Name" Input1
read -p "Enter the Last Name" Input2
read -p "Enter the Mobile Number:" MobileNumber
#read -p "Enter the password"
#([[:digit:]]+{1,}){8,}
if [[ $Input1 =~ $FirstandLastNamePattern ]]
then
	echo "valid First Name"
else
	echo "Invalid Name"
fi
if [[ $Input1 =~ $FirstandLastNamePattern ]]
then
        echo "Valid Last Name"
else
        echo "Invalid Last Name"
fi

if [[ $MobileNumber =~ $MobileNoPattern ]]
then
        echo "Valid Mobile Number"
else
        echo "Invalid Mobile Number"
fi



