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

function TotalHour(){
	local pWorkingHour=$1
	local DayWorkingHour=$2
	echo $(( $pWorkingHour + $DayWorkingHour ))
}



while [ $WorkedDay -le $WorkedDaysForMonth ] && [ $PreviousTotalWorkingHour -le $TotalWorkingHourPossible ]
do
checkAttendance=$((RANDOM%3))
	case $checkAttendance in
		$isPresent)
			echo "employee is present"
                	TotalSalary=`WageCalculation $FullDayHour $WagePerHour $TotalSalary`
			PreviousTotalWorkingHour=`TotalHour $PreviousTotalWorkingHour $FullDayHour`
			echo $TotalSalary;;
		$isParttime)
			echo "employee is doing partime"
                	TotalSalary=`WageCalculation $ParttimeWorkingHour $WagePerHour $TotalSalary`
			PreviousTotalWorkingHour=`TotalHour $PreviousTotalWorkingHour $ParttimeWorkingHour`
			echo $TotalSalary;;

		*)
			echo "employee is absent"
	esac
((WorkedDay++))
done
