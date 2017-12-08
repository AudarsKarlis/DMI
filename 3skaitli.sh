#!/bin/bash
echo "Input a:"
read a
echo "Input b:"
read b
echo "Input c:"
read c

if (( $a > $b && $a > $c ))
then k=$a
  if (( $b > $c ))
  then j=$b
   i=$c
  else j=$c
   i=$b
  fi
fi

if (( $b > $a && $b > $c ))
then k=$b
  if (( $a > $c ))
  then j=$a
   i=$c
  else j=$c
   i=$a
  fi
fi

if (( $c > $a && $c > $b ))
then k=$c
 if (( $a > $b ))
 then j=$a
  i=$b
 else j=$b
  i=$a
 fi
fi

echo "Skaitļi augošā secībā ir:"
echo "$i, $j, $k"
