#! /bin/bash -x

LargestNumber=0
SecondLargestNumber=0
for ((i=0;i<10;i++))
do
	number[$i]=$((RANDOM%1000))

done

#if [ ${number[0]} -gt ${number[1]} ]
#then
#	Largestnumber=${number[0]}
#	Secondlargest=${number[1]}
#else
#	Largestnumber=${number[1]}
#	Secodlargest=${number[0]}
#fi

for u in ${number[@]}
do
	if [ $u -gt $LargestNumber ]
	then
	SecondLargestNumber=$LargestNumber
	LargestNumber=$u
	elif [ $u -gt $SecondLargestNumber ]
	then
	SecondLargestNumber=$u
	fi
done

echo "Second Largest Number" $SecondLargestNumber

