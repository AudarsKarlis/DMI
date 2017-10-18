#!/bin/bash
echo "Input a:"
read a
echo "Input b:"
read b

#if [ $a -gt $b ]
if (( $a > $b ))
then
echo "a ($a) > b ($b)"
#elif [ $a -lt $b ]
elif (( $a < $b ))
then
echo "a ($a) < b ($b)"
else
echo "a ($a) = b ($b)"
fi

: <<'END'
echo "Input a:"
read a
echo "Input b:"
read b
if [ $a -gt $b ]
then
echo "jā, a ($a) > b ($b)"
else
echo "nē, a ($a) nav lielāks par b ($b)"
fi
END



: <<'END'
c=`expr $a + $b`
echo "$a + $b = "$c
END
