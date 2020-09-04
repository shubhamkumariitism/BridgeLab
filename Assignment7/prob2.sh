#! /bin/bash -x

LargestNumber=0
SecondLargestNumber=0
for ((i=0;i<10;i++))
do
	number[$i]=$((RANDOM%1000))

done

for ((i=0;i<10;i++))
do
	small=${number[$i]}
	index=$i
	for ((j=$(($i+1));j<10;j++))
	do
		if [ ${number[j]} -lt  $small ]
		then
		small=${number[$j]}
		index=$j
		fi
	done
	temp=${number[$i]}
	number[$i]=${number[$index]}
	number[$index]=$temp
done

echo "Second Largest Number" ${number[9]}

