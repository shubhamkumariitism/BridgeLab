#!/bin/bash -x

n=6
#read -p "Enter the length of array" n
#for ((i=0;i<n;i++))
#do
#read -p "Enter the element" arr[$i]
#done
arr=( 5 6 8 -14 6 -5 )
for ((i=0;i<$(($n-2));i++))
do
	if [[ $((${arr[$i]}+${arr[$i+1]}+${arr[$i+2]})) -eq 0 ]]
	then
		echo "The number causes sum equal to zero"  ${arr[@]:$i:3}
		echo "The number causes sum equal to zero2"  ${arr[i]} ${arr[$i+1]} ${arr[$i+2]} 
flag=1
	fi
done

if [[ $flag -eq 0 ]]
then
	echo "There is no three numbers causes sum equal to zero"
fi
