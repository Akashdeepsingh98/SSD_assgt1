myarray=("$@")
firstele=${myarray[0]}

for i in "${myarray[@]:1}";
do
	firstele=( $( echo "$firstele^$i" | bc ) )
done

echo $firstele
