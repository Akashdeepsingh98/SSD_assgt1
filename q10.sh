read operation
read n

read result

for (( i=1; i<$n; i++ ));
do
	read temp
	result=$( echo "scale=4; $result$operation$temp" | bc -l )
done
echo $result
