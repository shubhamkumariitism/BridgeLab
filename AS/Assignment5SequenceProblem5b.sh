#!/bin/bash

read -p "Enter the width of plot which is assumed in feet" PlotWidth
read -p "Enter the length of plot which is assumed in feet" PlotLength

AreaInFeet=$(($PlotWidth*$PlotLength))
AreaInMeters=`echo $AreaInFeet |awk '{print $1*.092903}'`
echo "The Area In metere square" $AreaInMeters
