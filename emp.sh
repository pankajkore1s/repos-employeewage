#!/bin/bash/ -x
echo "welcome to employee wage computation"
isPresent='1'
isParttime='2'
WagePerHour=20
FullDayHour=8
ParttimeWorkingHour=4
WorkedDaysForMonth=20
WorkedDay=1
TotalSalary=0

function WageCalculation(){
	local workingHourPerDay=$1
	local WageRecievedPerHour=$2
	local TotalSalaryWorkedDaysForMonth=$3
	value=$(( $workingHourPerDay * $WageRecievedPerHour ))
	TotalSalaryWorkedDaysForMonth=$(( $value + $TotalSalaryWorkedDaysForMonth ))
	echo  $TotalSalaryWorkedDaysForMonth
}
while [ $WorkedDay -le $WorkedDaysForMonth ]
do
checkAttendance=$((RANDOM%3))
	case $checkAttendance in
		$isPresent)
			echo "employee is present"
                	TotalSalary=`WageCalculation $FullDayHour $WagePerHour $TotalSalary`
			((WorkedDay++))
			echo $TotalSalary;;
		$isParttime)
			echo "employee is doing partime"
                	TotalSalary=`WageCalculation $ParttimeWorkingHour $WagePerHour $TotalSalary`
			((TotalSalary++))
			echo $TotalSalary;;

		*)
			echo "employee is absent"
	esac
done
