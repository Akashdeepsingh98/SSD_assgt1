#Question a
mkdir Assignment1
cd Assignment1

#Question b
touch lab1.txt lab2.txt lab3.txt lab4.txt lab5.txt

#Question c
find . -name '*.txt' -exec sh -c 'mv "$0" "${0%.txt}.c"' {} \;

#Question d
ls -laSr

#Question e
find $PWD -maxdepth 2 -ls

#Question f
find $PWD -name '*.txt' -ls
