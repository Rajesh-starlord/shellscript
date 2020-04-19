#! /bin/bash -x
#add part time
echo "welcome to employye wage calculation"
check=$(($RANDOM%2))
wage_per_hr=20
full_day_hr=8
half_day_hr=4
if [ $check -eq 1 ]
then
        category=$(($RANDOM%2))
        if [ $category -eq 1 ]
        then
                echo "employee is present and is a full time_emp"
                echo "daily_wage=$(($wage_per_hr*$full_day_hr))"
       	else
                echo "employee is present and is a part time_emp"
                echo "daily_wage=$(($wage_per_hr*$half_day_hr))"
        fi
else
	echo "employee is absent"
        echo "daily_wage=$(($wage_per_hr*0))"
fi
