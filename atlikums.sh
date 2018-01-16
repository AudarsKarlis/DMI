#! /bin/bash
echo "Ievadiet argumentu:"
read input
x=$input

a="Skaitlis:" # Mainīgajam a tiek piešķirta 
b="%1"
c="%2"
d="%3"
e="%4"
f="%5"
g="%10"

printf "%16.16s" $a
printf "%8.8s" $b
printf "%8.8s" $c
printf "%8.8s" $d
printf "%8.8s" $e
printf "%8.8s" $f
printf "%8.8s\n" $g

y=`expr $x + 10`
while (( $x < $y ))
do
  printf "%16.16s" $x
  printf "%8.8s" `expr $x % 1`
  printf "%8.8s" `expr $x % 2`
  printf "%8.8s" `expr $x % 3`
  printf "%8.8s" `expr $x % 4`
  printf "%8.8s" `expr $x % 5`
  printf "%8.8s\n" `expr $x % 10`

#  printf "`expr $x % 1` `expr $x % 2` `expr $x % 3` `expr $x % 4` `expr $x % 5` `expr $x % 10`\n"
  x=`expr $x + 1`
done

# apskatīt un palasīt par bash positioning
# https://bash.cyberciti.biz/guide/Echo_Command
