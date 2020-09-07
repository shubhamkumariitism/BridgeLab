







































































#UC6
totalEmpHrs=0
totalWorkingDays=0
MAX_HRS=100
MAX_WORKING_DAYS=20
while [[ $totalEmpHrs -lt $MAX_HRS && $totalWorkingDays -lt $MAX_WORKING_DAYS  ]]
do
        ((totalWorkingDays++))
		randomCheck=$((RANDOM%3))
        getWorkingDays $randomCheck
		empHrs=$?
        dailyWage=$(( $empHrs * $WageperHour ))
        dailyWageArray["Day"$totalWorkingDays]=$dailyWage
        totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
