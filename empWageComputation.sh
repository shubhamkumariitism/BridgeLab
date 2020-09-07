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

                ;;
                *)
                empHrs=0
                ;;
esac
