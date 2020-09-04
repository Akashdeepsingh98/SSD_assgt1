myarray=("$@")
firstele=${myarray[0]}
for i in "${myarray[@]:1}";
do
	firstele=$(($firstele**$i))
done

echo $firstele
