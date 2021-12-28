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

case $checkAttendance in
	$isPresent)
		echo "employee is present"
                `echo WageCalculation $FullDayHour $WagePerHour`;;
	$isParttime)
		echo "employee is doing partime"
                `echo WageCalculation $ParttimeWorkingHour $WagePerHour`;;
	*)
		echo "employee is absent"
esac
