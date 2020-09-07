#!/bin/bash -x

RandomNumber=$(((RANDOM%7)+1))

if [[ $RandomNumber -eq 1 ]]
then
	echo "SUNDAY"
elif [[ $RandomNumber -eq 2 ]]
then
        echo "MONDAY"
elif [[ $RandomNumber -eq 3 ]]
then
        echo "TUESDAY"
elif [[ $RandomNumber -eq 4 ]]
then
        echo "WEDNESDAY"
elif [[ $RandomNumber -eq 5 ]]
then
        echo "THURSDAY"
elif [[ $RandomNumber -eq 6 ]]
then
        echo "FRIDAY"
else
        echo "SATURDAY"
fi
