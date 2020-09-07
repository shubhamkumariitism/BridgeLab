















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
