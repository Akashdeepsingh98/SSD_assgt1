crontab $1
if [[ $? != 0 ]]
then 
	echo "No"
else 
	echo "Yes"
	crontab -r
fi