#!bin/bash -x

read -p "Enter the value" Number
fact=1
for((i=Number;i>0;i--))
do
	fact= $(($fact*$Number))
done

echo $fact
