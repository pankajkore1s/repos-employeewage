#!/bin/bash/ -x
echo "welcome to employee wage computation"
isPresent='1'
isParttime='2'
WagePerHour=20
FullDayHour=8
ParttimeWorkingHour=8
WorkedDaysForMonth=20
WorkedDay=1
TotalSalary=0
PreviousTotalWorkingHour=0
TotalWorkingHourPossible=100

function WageCalculation(){
	local workingHourPerDay=$1
	local WageRecievedPerHour=$2
	local TotalSalaryWorkedDaysForMonth=$3
	value=$(( $workingHourPerDay * $WageRecievedPerHour ))
	TotalSalaryWorkedDaysForMonth=$(( $value + $TotalSalaryWorkedDaysForMonth ))
	echo  $TotalSalaryWorkedDaysForMonth
}
while [ $WorkedDay -le $WorkedDaysForMonth ] && [ $PreviousTotalWorkingHour -le $TotalWorkingHourPossible ]
do
checkAttendance=$((RANDOM%3))
	case $checkAttendance in
		$isPresent)
			echo "employee is present"
                	TotalSalary=`WageCalculation $FullDayHour $WagePerHour $TotalSalary`
			PreviousTotalWorkingHour=$(($PreviousTotalWorkingHour + $FullDayHour ))
			echo $TotalSalary;;
		$isParttime)
			echo "employee is doing partime"
                	TotalSalary=`WageCalculation $ParttimeWorkingHour $WagePerHour $TotalSalary`
			PreviousTotalWorkingHour=$(($PreviousTotalWorkingHour + $ParttimeWorkingHour ))
			echo $TotalSalary;;

		*)
			echo "employee is absent"
	esac
((WorkedDay++))
done
