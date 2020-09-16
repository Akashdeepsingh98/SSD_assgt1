ps -au | tr -s ' ' | cut -d' ' -f2 | tail -n +2 > pid.txt
read N
maxlines=$( wc -l < pid.txt )
if [ "$N" -gt "$maxlines" ]
then
	N=$maxlines
fi
echo `head -$N pid.txt`
