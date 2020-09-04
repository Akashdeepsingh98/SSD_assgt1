read -p "Enter a string: " string
string=$(echo "$string" | tr '[:upper:]' '[:lower:]')
if [[ $(rev <<< "$string") == "$string" ]]
then
    echo "Yes"
else
	echo "No
fi
