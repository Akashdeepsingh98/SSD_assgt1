output=( $(echo $@ | grep -o '[0-9.]*') )
echo ${output[*]}
