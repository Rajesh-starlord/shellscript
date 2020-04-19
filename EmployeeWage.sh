#! /bin/bash -x
#store emp daily wage with total wage with day
echo "welcome to employye wage calculation"
check=$(($RANDOM%2))
wage_per_hr=20
full_day_hr=8
half_day_hr=4
total_work_day=20
total_wage=0
day_count=1
total_working_hrs=100
work_hr=0
count=0
get_work_hr () {
        if [ $2 == "full_time" ];
        then
                workhr=$(($1+8))
                return $workhr
        else
                workhr=$(($1+4))
                return $workhr
        fi
}

while [ $day_count -le $total_work_day ] && [ $work_hr -lt $total_working_hrs ]
do
        case $check in
                1)
                category=$(($RANDOM%2))
                case $category in
                        1)
			if [ $work_hr -le 92 ];
			then
                        	daily_wage=$(($wage_per_hr*$full_day_hr))
                              	total_wage=$(($total_wage+$daily_wage))
                        	day_count=$(($day_count+1))
				get_work_hr $work_hr "full_time"
                        	work_hr=$?
				emp_data[$count]="day$day_count-daily_wage=$daily_wage:total_wage=$total_wage"
                		count=$(($count+1))
			else
                                daily_wage=$(($wage_per_hr*$((100-$work_hr))))
                                total_wage=$(($total_wage+$daily_wage))
                                day_count=$(($day_count+1))
                                work_hr=$(($work_hr+$((100-$work_hr))))
				emp_data[$count]="day$day_count-daily_wage=$daily_wage:total_wage=$total_wage"
                        	count=$(($count+1))
			fi
                        ;;
                        *)
			if [ $work_hr -le 96 ];
			then
                        	daily_wage=$(($wage_per_hr*$half_day_hr))
                        	total_wage=$(($total_wage+$daily_wage))
                        	day_count=$(($day_count+1))
                        	get_work_hr $work_hr "full_time"
                        	work_hr=$?
				emp_data[$count]="day$day_count-daily_wage=$daily_wage:total_wage=$total_wage"
                        	count=$(($count+1))
			else
                                daily_wage=$(($wage_per_hr*$((100-$work_hr))))
                                total_wage=$(($total_wage+$daily_wage))
                                day_count=$(($day_count+1))
                                work_hr=$(($work_hr+$((100-$work_hr))))
				emp_data[$count]="day$day_count-daily_wage=$daily_wage:total_wage=$total_wage"
                        	count=$(($count+1))
			fi
                        ;;
                esac
                ;;
                *)
                day_count=$(($day_count+1))
		emp_data[$count]="day$day_count-daily_wage=$daily_wage:total_wage=$total_wage"
                count=$(($count+1))
                ;;
        esac
done
for data in ${emp_data[@]}
do
        echo -e "$data\n"
done
echo "total_wage=$total_wage"
echo "total_work_hrs=$work_hr"
