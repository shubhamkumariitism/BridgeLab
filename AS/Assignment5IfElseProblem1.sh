#!/bin/bash -x

RandomNumber1=$((RANDOM%1000))
RandomNumber2=$((RANDOM%1000))
RandomNumber3=$((RANDOM%1000))
RandomNumber4=$((RANDOM%1000))
RandomNumber5=$((RANDOM%1000))

if [[ $RandomNumber1 -gt $RandomNumber2 ]]
then
	Largest1=$RandomNumber1
	Minimum1=$RandomNumber2
else
	Largest1=$RandomNumber2
	Minimum1=$RandomNumber1
fi

if  [[ $RandomNumber3 -gt $RandomNumber4 ]]
then
	Largest2=$RandomNumber3
	Minimum2=$RandomNumber4
else
	Largest2=$RandomNumber4
        Minimum2=$RandomNumber3
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

if [[ $RandomNumber5 -gt $Largest ]]
then
	Largest=$RandomNumber5
fi

if [[ $RandomNumber5 -lt $Minimum ]]
then
	Minimum=$RandomNumber5
fi

echo "The Minimum Number among five Numbers" $Minimum
echo "The Maximum Number among five Number " $Largest
