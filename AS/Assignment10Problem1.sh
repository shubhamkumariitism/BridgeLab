#!/bin/bash -x
declare -A Compute
read -p "Enter the first Number" Number1
read -p "Enter the Second Number" Number2
read -p "Enter the Third Number" Number3

Compute[1]=$(($Number1+$Number2*$Number3))
Compute[2]=$((($Number1*$Number2)+$Number3))
Compute[3]=$(($Number3+($Number1/$Number2)))
Compute[4]=$((($Number1 %$Number2)+$Number3))

for ((i=1;i<=4;i++))
do
	Result[i]=${Compute[$i]}
done
echo "Array" ${Result[@]}
for((i=1;i<=4;i++))
do
	max=${Result[$i]}
	loc=$i
	for((j=$(($i+1));j<=4;j++))
	do
		if [[ ${Result[j]} -gt $max ]]
		then
			max=${Result[$j]}
			loc=$j
		fi
	done
	temp=${Result[$i]}
	Result[$i]=${Result[$loc]}
	Result[$loc]=$temp
done
echo "Computed values in Descending Order" ${Result[@]}
for((i=1;i<=4;i++))
do
        min=${Result[$i]}
	loc=$i
        for((j=$(($i+1));j<=4;j++))
        do
                if [[ ${Result[$j]} -lt $min ]]
                then
                        min=${Result[$j]}
			loc=$j
                fi
        done
        temp=${Result[$i]}
        Result[$i]=$min
        Result[$loc]=$temp
done
echo "Computed values in Ascending Order" ${Result[@]}

