#!/bin/bash
echo "Input a:"
read a
echo "Input b:"
read b
echo "Input c:"
read c

if (( $a > $b && $a > $c ))
then $a=$k
fi
echo "$k"

: <<'END'
if (( $b > $c ))
then $b=$j
$c=$i
else $c=$j
$b=$i
fi

#: <<'END'
if (( $b > $a && $b > $c ))
then $b=$k
if (( $a > $c ))
then $a=$j
$c=$i
fi

if (( $c > $b && $c > $a ))
then $c=$i
if (( $a > $c ))
then $a=$j
$b=$i
fi
END

#echo "$i, $j, $k"
#echo "$k"
