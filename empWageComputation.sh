#!/bin/bash
echo "Welcome to empWageCompuation.sh"
#UC1
declare -A dailyWageArray
PresentOrAbsent=$((RANDOM%3))
#UC2
WageperHour=20
FullDayHour=8
DailyWageEmployeeFullDay=$(( $WageperHour * $FullDayHour ))
#UC3
PartTimeHour=8
DailyWageEmployeePartDay=$(( $WageperHour * $PartTimeHour ))
#UC4
case PresentOrAbsent in
                1)
                DailyWageEmployeeFullDay=$(( $WageperHour * $FullDayHour ))
				echo DailyWageEmployeeFullDay
                ;;

                2)
                DailyWageEmployeePartDay=$(( $WageperHour * $PartTimeHour ))
				echo DailyWageEmployeePartDay
                ;;
                *)
                empHrs=0
                ;;
esac
#UC5
EmpWorkingPerMonth=20
case PresentOrAbsent in
                1)
                DailyWageEmployeeFullDay=$(( $WageperHour * $FullDayHour ))
				EmpWageForMonth=$(( $DailyWageEmployeeFullDay *$EmpWorkingPerMonth ))
				echo "Employee Wage For a Month For Full Time" $EmpWageForMonth

                ;;

                2)
                DailyWageEmployeePartDay=$(( $WageperHour * $PartTimeHour ))

				echo DailyWageEmployeePartDay
				EmpWageForMonth=$(( $DailyWageEmployeePartDay *$EmpWorkingPerMonth ))
				echo "Employee Wage For a Month For Part Time" $EmpWageForMonth

#UC7
getWorkingDays()
{
         case $1 in
                1)
                empHrs=$FullDayHour
                ;;

                2)
                empHrs=$PartTimeHour
                ;;
                *)
                empHrs=0
                ;;
esac
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
        esac
        return $empHrs

}

#UC8 UC9
totalsalary=$(($totalEmpHrs*$WageperHour))
echo "dailyWage array elements:" ${dailyWageArray[@]}
echo "dailyWage index positions for array:" ${!dailyWageArray[@]}

