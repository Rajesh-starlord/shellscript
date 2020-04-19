#! /bin/bash -x
#calculate wage for a month
echo "welcome to employye wage calculation"
check=$(($RANDOM%2))
wage_per_hr=20
full_day_hr=8
half_day_hr=4
total_work_day=20
total_wage=0
day_count=1
while [ $day_count -le $total_work_day ]
do
        case $check in
                1)
                category=$(($RANDOM%2))
                case $category in
                        1)
                        echo "employee is present in day$day_count and is a full time_emp"
                        daily_wage=$(($wage_per_hr*$full_day_hr))
                        echo "daily_wage=$daily_ echo "
                        total_wage=$(($total_wage+$daily_wage))
                        day_count=$(($day_count+1))
                        ;;
                        *)
                        echo "employee is present in day$day_count and is a part time_emp"
                        daily_wage=$(($wage_per_hr*$half_day_hr))
                        echo "daily_wage=$daily_wage"
                        total_wage=$(($total_wage+$daily_wage))
                        day_count=$(($day_count+1))
                        ;;
                esac
                ;;
                *)
                echo "employee is absent in day$day_count"
                echo "daily_wage=$(($wage_per_hr*0))"
                day_count=$(($day_count+1))
                ;;
        esac
done
echo "monthly_wage=$total_wage"
