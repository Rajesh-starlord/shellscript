#! /bin/bash -x
#solving Using Switch Case
echo "welcome to employye wage calculation"
check=$(($RANDOM%2))
wage_per_hr=20
full_day_hr=8
half_day_hr=4
case $check in
        1)
        category=$(($RANDOM%2))
        case $category in
                1)
                echo "employee is present and is a full time_emp"
                echo "daily_wage=$(($wage_per_hr*$full_day_hr))"
                ;;
                *)
                echo "employee is present and is a part time_emp"
                echo "daily_wage=$(($wage_per_hr*$half_day_hr))"
                ;;
        esac
        ;;
        *)
        echo "employee is absent"
        echo "daily_wage=$(($wage_per_hr*0))"
        ;;
esac

