#history | tail -n 10 | cut -c7- | sort  | uniq -c | sort -nr | tr -s ' ' | cut -d' ' -f2,3 | awk '{printf "%s %s \n", $2,$1}'

history | tail -n 10 | tr -s ' ' | cut -d' ' -f3 | sort | uniq -c | sort -nr | awk '{printf "%s %s \n", $2,$1}'
