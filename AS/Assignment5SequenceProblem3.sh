#! /bin/bash -x

randomDice1=$(((RANDOM%6)+1))
echo $randomDice1
randomDice2=$(((RANDOM%6)+1))
echo $randomDice2
sumofTwoDice=$(($randomDice1+$randomDice2))
echo $sumofwoDice
