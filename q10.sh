myarray=("$@")
read operation
read n

read result

for (( i=1; i<$n; i++ ));
do
	read temp
	#for floating point division pure shell does not work
	if [[ "$operation" == "/" ]]
	then
		result=$( echo "scale=4; $result/$temp" | bc -l )
	else
		result=`expr $result "$operation" $temp`
	fi
done
echo $result
