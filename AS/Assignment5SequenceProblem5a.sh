#!/bin/bash

read -p "Enter the number which is assumed in inches" NumberInInches
echo "Number="$NumberInInches
NumberInFeet=`echo $NumberInInches | awk '{print $1/12}'`
echo $NumberInFeet
