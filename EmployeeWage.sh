#! /bin/bash -x
# Employee Attendance
echo "welcome to employye wage calculation"
check=$(($RANDOM%2))
if [ $check -eq 1 ];
then
        echo "employee is present"
else
        echo "employee is absent"
fi
