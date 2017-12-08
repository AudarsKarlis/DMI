#!/bin/bash
echo "Input a:"
read a
echo "Input b:"
read b
echo "Input c:"
read c

if (( $a > $b && $a > $c ))
then k=$a
fi
if (( $b > $c ))
then j=$b
i=$c
else j=$c
i=$b
fi
echo "$i, $j, $k"


if (( $b > $a && $b > $c ))
then k=$b
fi
if (( $a > $c ))
then j=$a
i=$c
else j=$c
i=$b
fi
echo "$i, $j, $k"


if (( $c > $a && $c > $b ))
 then  k=$c
fi
  if (( $a > $b ))
   then    j=$a
    i=$b
   else    j=$b
    i=$a
  fi

echo "Skaitļi augošā secībā:"
echo "$i, $j, $k"
