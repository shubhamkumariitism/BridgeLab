#!/bin/bash -x

RandomNumber=$((RANDOM%10))
if [[ $RandomNumber -eq 1 ]]
then
	echo "ONE"
elif [[ $RandomNumber -eq 2 ]]
then
        echo "TWO"
elif [[ $RandomNumber -eq 3 ]]
then
        echo "THREE"
elif [[ $RandomNumber -eq 4 ]]
then
        echo "FOUR"
elif [[ $RandomNumber -eq 5 ]]
then
        echo "FIVE"
elif [[ $RandomNumber -eq 6 ]]
then
        echo "SIX"
elif [[ $RandomNumber -eq 7 ]]
then
        echo "SEVEN"
elif [[ $RandomNumber -eq 8 ]]
then
        echo "EIGHT"
else

        echo "NINE"
fi
