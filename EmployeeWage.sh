#! /bin/bash -x
#daily wage
echo "welcome to employye wage calculation"
check=$(($RANDOM%2))
wage_per_hr=20
full_day_hr=8
if [ $check -eq 1 ];
then
        echo "employee is present"
        echo "daily_wage=$(($wage_per_hr*$full_day_hr))"
else
        echo "employee is absent"
        echo "daily_wage=$(($wage_per_hr*0))"
fi
