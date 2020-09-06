































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
				EmpWageForMonth=$(( $DailyWageEmployeePartDay *$EmpWorkingPerMonth ))
				echo "Employee Wage For a Month For Part Time" $EmpWageForMonth
                ;;
                *)
                empHrs=0
                ;;
esac
