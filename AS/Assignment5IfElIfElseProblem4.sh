#!/bin/bash -x

read -p "Enter the First Number" Number1
read -p "Enter the Second Number" Number2
read -p "Enter the Third Number" Number3
#=`echo $sumofTwoDigit | awk '{print $1/2}'`
#Calculation3=`echo $Number1 $Number2 $Number3 | awk '{print $3+$1/$2}'
Calculation1=$(( $Number1 + ( $Number2 * $Number3 )))
Calculation2=$(( $Number1 % $Number2 + $Number3 ))
Calculation3=$(($Number3 + $Number1 / $Number3 ))
Calculation4=$(( ( $Number1 * $Number2 ) + $Number3 ))

if [[ $Calculation1 -gt $Calculation2 ]]
then
	Largest1=$Calculation1
	Minimum1=$Calculation2
else
	Largest1=$Calculation2
    Minimum1=$Calculation1
fi

if [[ $Calculation3 -gt $Calculation4 ]]
then
	Largest2=$Calculation3
	Minimum2=$Calculation4
else
	Largest2=$Calculation4
    Minimum2=$Calculation3
fi

if [[ $Largest1 -gt $Largest2 ]]
then
	Largest=$Largest1
else
	Largest=$Largest2
fi

if [[ $Minimum1 -lt $Minimum2 ]]
then
	Minimum=$Minimum1
else
	Minimum=$Minimum2
fi

echo "The Minimum Number among five Numbers" $Minimum
echo "The Maximum Number among five Number " $Largest
