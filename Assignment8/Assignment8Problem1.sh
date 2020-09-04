#!/bin/bash -x
declare -A Dice

Dice[1]=0
Dice[2]=0
Dice[3]=0
Dice[4]=0
Dice[5]=0
Dice[6]=0
minimum=11

while [[ ${Dice[1]} -ne 10 && ${Dice[2]} -ne 10 && ${Dice[3]} -ne 10 && ${Dice[4]} -ne 10 && ${Dice[5]} -ne 10 && ${Dice[6]} -ne 10 ]]
do
no=$(((RANDOM%6)+1))
	if [ $no -eq 1 ]
	then
		Dice[1]=$((${Dice[1]}+1))
		if [ ${Dice[1]} -eq 10 ]
		then
			flag=1
		fi
		if [ ${Dice[1]} -lt $minimum ]
		then
			minimum=${Dice[1]}
			flagMinimum=1
		fi
	elif [ $no -eq 2 ]
	then
		Dice[2]=$((${Dice[2]}+1))
		if [ ${Dice[2]} -eq 10 ]
                then
                        flag=2
                fi
		if [ ${Dice[2]} -lt $minimum ]
                then
                        minimum=${Dice[2]}
                        flagMinimum=2
                fi

	elif [ $no -eq 3 ]
	then
		Dice[3]=$((${Dice[3]}+1))
		if [ ${Dice[3]} -eq 10 ]
                then
                        flag=3
                fi
		if [ ${Dice[3]} -lt $minimum ]
                then
                        minimum=${Dice[3]}
                        flagMinimum=3
                fi

	elif [ $no -eq 4 ]
	then
		Dice[4]=$((${Dice[4]}+1))
		if [ ${Dice[4]} -eq 10 ]
                then
                        flag=4
                fi
		if [ ${Dice[4]} -lt $minimum ]
                then
                        minimum=${Dice[4]}
                        flagMinimum=4
                fi

	elif [ $no -eq 5 ]
	then
		Dice[5]=$((${Dice[5]}+1))
		if [ ${Dice[5]} -eq 10 ]
                then
                        flag=5
                fi
		if [ ${Dice[5]} -lt $minimum ]
                then
                        minimum=${Dice[5]}
                        flagMinimum=5
                fi

	else
		Dice[6]=$((${Dice[6]}+1))
		if [ ${Dice[6]} -eq 10 ]
                then
                        flag=6
                fi
		if [ ${Dice[6]} -lt $minimum ]
                then
                        minimum=${Dice[6]}
                        flagMinimum=6
                fi

	fi
done


echo "The number in Dice become 10 on counting of rolling" $flag
echo "The mimium  rolled for a number on dice" $flagMinimum
