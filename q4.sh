read string
string=( $(echo $string | grep -o '[0-9.]*') )
echo "(${string[*]})"
