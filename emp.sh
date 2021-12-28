#!/bin/bash/ -x
echo "welcome to employee wage computation"
isPresent='1'
checkAttendance=$((RANDOM%2))
WagePerHour=20
FullDayHour=8
if [ $checkAttendance == $isPresent ]
	then
		echo "employee is present"
		value=$(( $FullDayHour * $WagePerHour ))
		echo $value
	else
		echo "employee is absent"
fi
