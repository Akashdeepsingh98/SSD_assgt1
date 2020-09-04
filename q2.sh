length=${#1}
permutate() {
  local characters="$1"
  local newpermutation="$2"
  local existence=$( command -v "$newpermutation" )
  if [ "$existence" != "" -a "${#newpermutation}" == "$length" ]
  then
  	echo "Yes"
  	echo "$newpermutation"
  	exit 0
  fi
  if [ "$characters" == "" ]
  then
    return
  fi
  local i
  for (( i=0; i<${#characters}; i++ )) ; 
  do
    permutate "${characters:0:i}${characters:i+1}" "$newpermutation${characters:i:1}"
  done
  }
permutate $1
echo "No"
