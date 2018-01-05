#! /bin/bash
echo "Ievadiet argumentu:"
read input
x=$input

y=`expr $x + 10`
while (( $x < $y ))
do
  printf "$x `expr $x % 1` `expr $x % 2` `expr $x % 3` `expr $x % 4` `expr $x % 5` `expr $x % 10`\n"
  x=`expr $x + 1`
done

# apskatīt un palasīt par bash positioning
