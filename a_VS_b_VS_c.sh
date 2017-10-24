#!/bin/bash
echo "Ievadiet mainīgo a:"
read a
echo "Ievadiet mainīgo b:"
read b
echo "Ievadiet mainīgo c:"
read c
l=$a

#if [ $a -gt $b ]
if (( $b > l ))
then
l=$b
fi
if (( $c > l ))
then
l=$c
fi
echo "Vislielākais mainīgais ir $l."
#else
#echo "$c"

#elif (( $b > $c ))
#then
#echo "$b"
#else
#echo "$c"
#fi
#echo "a ($a) > b ($b)"
#elif [ $a -lt $b ]
#elif (( $a < $b ))
#then
#echo "a ($a) < b ($b)"
#else
#echo "a ($a) = b ($b)"
#fi
#
#: <<'END'
#echo "Input a:"
#read a
#echo "Input b:"
#read b
#if [ $a -gt $b ]
#then
#echo "jā, a ($a) > b ($b)"
#else
#echo "nē, a ($a) nav lielāks par b ($b)"
#fi
#END
#
#
#
#: <<'END'
#c=`expr $a + $b`
#echo "$a + $b = "$c
#END
#echo "Beigas"
#
#
#
