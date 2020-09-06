



















































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
        return $empHrs

}
#END OF UC7