read number
digits=( $( echo "$number" | tr -d ' ' ) )
newdigits=""
for (( i=${#digits}-1; i>=0; i-- ));
do
	if [[ $(("$i"%2)) -eq 0 ]]
	then
		temp="${digits:i:1}"
		temp=$((temp*2))
		if [[ "$temp" -gt 9 ]]
		then
			temp=$((temp-9))
		fi
		newdigits="$temp$newdigits"
	else
		newdigits="${digits:i:1}$newdigits"
	fi
done

total=0
for (( i=0; i<${#newdigits}; i++ ));
do
	temp="${newdigits:i:1}"
	total=$((total+temp))
done

result=$((total%10))
if [[ "$result" != 0 ]]
then
	echo "Invalid"
else
	echo "Valid"
fi
