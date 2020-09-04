content=$( head -1 $1 )
read -a arr <<< "$content"
if [ "${#arr[*]}" != 6 ]
then
	echo "Incorrect length"
	exit
fi

numre='^[0-9]+$'

#check minute is correct
if [ "${arr[0]}" != "*" ]
then
	if [[ "${arr[0]}" =~ $numre ]]
	then
		arr[0]=`expr ${arr[0]} + 0`
		if [[ "${arr[0]}" -lt 0 ]] || [[ "${arr[0]}" -gt 59 ]]
		then
			echo "Wrong Min"
			exit
		fi
	else
		echo "Wrong Min"
		exit
	fi
fi

#check HR
if [ "${arr[1]}" != "*" ]
then
	if [[ "${arr[1]}" =~ $numre ]]
	then
		arr[1]=`expr ${arr[1]} + 0`
		if [[ "${arr[1]}" -lt 0 ]] || [[ "${arr[1]}" -gt 23 ]]
		then
			echo "Wrong HR"
			exit
		fi
	else
		echo "Wrong HR"
		exit
	fi
fi

#check month
if [ "${arr[3]}" != "*" ]
then
	if [[ "${arr[3]}" =~ $numre ]]
	then
		arr[3]=`expr ${arr[3]} + 0`
		if [[ "${arr[3]}" -lt 1 ]] || [[ "${arr[3]}" -gt 12 ]]
		then
			echo "Wrong Month"
			exit
		fi
	else
		echo "Wrong Month"
		exit
	fi
fi

#check day of month
if [ "${arr[2]}" != "*" ]
then
	
	if [[ "${arr[2]}" =~ $numre ]]
	then
		arr[2]=`expr ${arr[2]} + 0`
		
		if [[ "${arr[3]}" == 1 ]] || [[ "${arr[3]}" == 3 ]] || [[ "${arr[3]}" == 5 ]] || [[ "${arr[3]}" == 7 ]] || [[ "${arr[3]}" == 8 ]] || [[ "${arr[3]}" == 10 ]] || [[ "${arr[3]}" == 12 ]] 
		then
			if [[ "${arr[2]}" -lt 1 ]] || [[ "${arr[2]}" -gt 31 ]]
			then
				echo "Wrong day of month"
				exit
			fi
		fi
		
		if [[ "${arr[3]}" == 4 ]] || [[ "${arr[3]}" == 6 ]] || [[ "${arr[3]}" == 9 ]] || [[ "${arr[3]}" == 11 ]]
		then
			if [[ "${arr[2]}" -lt 1 ]] || [[ "${arr[2]}" -gt 30 ]]
			then
				echo "Wrong day of month"
				exit
			fi
		fi
		
		if [[ "${arr[3]}" == 2 ]]
		then
			if [[ "${arr[2]}" -lt 1 ]] || [[ "${arr[2]}" -gt 28 ]]
			then
				echo "Wrong day of month"
				exit
			fi
		fi
		
	else
		echo "Wrong day of month"
		exit
	fi
fi

#check day of week
if [ "${arr[4]}" != "*" ]
then
	if [[ "${arr[4]}" =~ $numre ]]
	then
		arr[4]=`expr ${arr[4]} + 0`
		if [[ "${arr[4]}" -lt 0 ]] || [[ "${arr[4]}" -gt 7 ]]
		then
			echo "Wrong Day of week"
			exit
		fi
	else
		echo "Wrong Day of week"
		exit
	fi
fi

#check command
existcommand=$( command -v "${arr[5]}" )
if [ "$existcommand" == "" ]
then 
	echo "Wrong command"
	exit
fi

echo "Yes"
