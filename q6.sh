res=$1
myarray=("$@")
power=1
for i in "${myarray[@]}";
do
	power=$(($i*$power))
done
echo `echo $res^$power | bc | grep -o '[0-9.]*' | tr -d " \t\n\r"`