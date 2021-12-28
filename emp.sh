#!/bin/bash/ -x
echo "welcome to employee wage computation"
isPresent='1'
isParttime='2'
checkAttendance=$((RANDOM%3))
WagePerHour=20
FullDayHour=8
ParttimeWorkingHour=4

function WageCalculation(){
	local workingHourPerDay=$1
	local WageRecievedPerHour=$2
	value=$(( $workingHourPerDay * $WageRecievedPerHour ))
	echo $value
}

if [ $checkAttendance == $isPresent ]
	then
		echo "employee is present"
		`echo WageCalculation $FullDayHour $WagePerHour`
	
	elif [ $checkAttendance == $isParttime ]
	then
		echo "employee is doing partime"
		`echo WageCalculation $ParttimeWorkingHour $WagePerHour`
	else
		echo "employee is absent"
fi
