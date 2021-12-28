#!/bin/bash/ -x
echo "welcome to employee wage computation"
isPresent='1'
checkAttendance=$((RANDOM%2))

if [ $checkAttendance == $isPresent ]
	then
		echo "employee is present"
	else
		echo "employee is absent"
fi
