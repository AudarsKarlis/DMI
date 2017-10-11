# 1. piemērs
echo "Jūs izmantojat kalkulatoru, ar kuru ir iespējams veikt dažus vienkāršus aprēķinus."

echo "Lūdzu ievadiet pirmo argumentu!"
read a

echo "Lūdzu ievadiet otro argumentu!"
read b

val1=`expr $a - $b`
echo "Ja no $a atņem $b, iznākums ir "$val1.

val2=`expr $a + $b`
echo "Ja pie $a pieskaita $b, iznākums ir "$val2.

val3=`expr $a \* $b`
echo "Ja $a reizina ar $b, iznākums ir "$val3.

val4=`expr $a / $b`
echo "Dalot $a ar $b, $b nieks $a niekā ieiet "$val4 reizi/es.

val5=`expr $a % $b`
echo "Ja $a dala ar $b, tad skaitlis, kas paliek atlikumā, ir "$val5.

