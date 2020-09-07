#!/bin/bash
read -p "Enter the number" Number
echo "Prime Factor of"$Number
for (( i=2; i<=Number; i++ ))
do
    if [[ $(($Number%$i)) -eq 0 ]]
	then
		isPrime=1
		for((j=2;j<=$(($i/2)); j++))
		do
			if [[ $(($i%$j)) -eq 0 ]]
			then
				isPrime=0
				break
			fi
		done
	if [[ $isPrime -eq 1 ]]
        then
            echo $i
        fi
    fi
done
