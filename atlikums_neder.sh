#! /bin/bash
echo "Lūdzu ievadiet argumentu:"
read input

x=$input
a0=`expr $x % 1`
a1=`expr $x % 2`
a2=`expr $x % 3`
a3=`expr $x % 4`
a4=`expr $x % 5`
a5=`expr $x % 10`

#echo "$a3"

x1=`expr $x + 1`

b0=`expr $x1 % 1`
b1=`expr $x1 % 2`
b2=`expr $x1 % 3`
b3=`expr $x1 % 4`
b4=`expr $x1 % 5`
b5=`expr $x1 % 10`

x2=`expr $x1 + 1`

c0=`expr $x2 % 1`
c1=`expr $x2 % 2`
c2=`expr $x2 % 3`
c3=`expr $x2 % 4`
c4=`expr $x2 % 5`
c5=`expr $x2 % 10`

x3=`expr $x2 + 1`

d0=`expr $x3 % 1`
d1=`expr $x3 % 2`
d2=`expr $x3 % 3`
d3=`expr $x3 % 4`
d4=`expr $x3 % 5`
d5=`expr $x3 % 10`

x4=`expr $x3 + 1`

e0=`expr $x4 % 1`
e1=`expr $x4 % 2`
e2=`expr $x4 % 3`
e3=`expr $x4 % 4`
e4=`expr $x4 % 5`
e5=`expr $x4 % 10`

x5=`expr $x4 + 1`

f0=`expr $x5 % 1`
f1=`expr $x5 % 2`
f2=`expr $x5 % 3`
f3=`expr $x5 % 4`
f4=`expr $x5 % 5`
f5=`expr $x5 % 10`

x6=`expr $x5 + 1`

g0=`expr $x6 % 1`
g1=`expr $x6 % 2`
g2=`expr $x6 % 3`
g3=`expr $x6 % 4`
g4=`expr $x6 % 5`
g5=`expr $x6 % 10`

x7=`expr $x6 + 1`

h0=`expr $x7 % 1`
h1=`expr $x7 % 2`
h2=`expr $x7 % 3`
h3=`expr $x7 % 4`
h4=`expr $x7 % 5`
h5=`expr $x7 % 10`

x8=`expr $x7 + 1`

i0=`expr $x8 % 1`
i1=`expr $x8 % 2`
i2=`expr $x8 % 3`
i3=`expr $x8 % 4`
i4=`expr $x8 % 5`
i5=`expr $x8 % 10`

x9=`expr $x8 + 1`

j0=`expr $x9 % 1`
j1=`expr $x9 % 2`
j2=`expr $x9 % 3`
j3=`expr $x9 % 4`
j4=`expr $x9 % 5`
j5=`expr $x9 % 10`


echo "%1 %2 %3 %4 %5 %10 Skaitlis:"
echo "$a0  $a1  $a2  $a3  $a4  $a5   $x"
echo "$b0  $b1  $b2  $b3  $b4  $b5   $x1"
echo "$c0  $c1  $c2  $c3  $c4  $c5   $x2"
echo "$d0  $d1  $d2  $d3  $d4  $d5   $x3"
echo "$e0  $e1  $e2  $e3  $e4  $e5   $x4"
echo "$f0  $f1  $f2  $f3  $f4  $f5   $x5"
echo "$g0  $g1  $g2  $g3  $g4  $g5   $x6"
echo "$h0  $h1  $h2  $h3  $h4  $h5   $x7"
echo "$i0  $i1  $i2  $i3  $i4  $i5   $x8"
echo "$j0  $j1  $j2  $j3  $j4  $j5   $x9"
#neder, jo jāveido ar cikla palīdzību
