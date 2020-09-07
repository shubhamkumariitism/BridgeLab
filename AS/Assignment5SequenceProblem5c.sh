#!/bin/bash -x

read -p "Enter the width of plot which is assumed in feet" PlotWidth
read -p "Enter the length of plot which is assumed in feet" PlotLength

read -p "Enter the total number of such plots" PlotsCount
AreaInFeet=$(($PlotWidth*$PlotLength))
AreaInMeters=`echo $AreaInFeet |awk '{print $1*.092903}'`

AreaInAcres=`echo $AreaInMeters |awk '{print $1*.000247105}'`
echo $AreaInAcres
TotalAcres=`echo $AreaInAcres |awk '{print $1*$PlotsCount}'`
#TotalAcres=$(($AreaInAcres * $PlotsCount))
echo "The Area of "$PlotsCount"Plots="$TotalAcres
