# 1. piemērs
echo "Tu izmanto kalkulatoru, ar kuru ir iespējams veikt dažus vienkāršus aprēķinus."

echo "Audar, lūdzu ievadi pirmo argumentu!"
read a
echo " "
echo "Pirmais arguments ir ievadīts."
echo "Audar, lūdzu ievadi otro argumentu!"
read b
echo " "
val1=`expr $a - $b`
echo "Otrais arguments ir ievadīts."
echo "Šeit būs vienkāršo aprēķinu rezultāti:"
echo " "
echo "Ja no $a atņem $b, iznākums ir "$val1.

val2=`expr $a + $b`
echo "Ja pie $a pieskaita $b, iznākums ir "$val2.

val3=`expr $a \* $b`
echo "Ja $a reizina ar $b, iznākums ir "$val3.

val4=`expr $a / $b`
echo "Dalot $a ar $b, $b nieks $a niekā ieiet "$val4 reizi/es.

val5=`expr $a % $b`
echo "Ja $a dala ar $b, tad skaitlis, kas paliek atlikumā, ir "$val5.

