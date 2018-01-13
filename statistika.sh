#! /bin/bash
echo "Lūdzu ievadiet skaitļu virkni, starp katru skaitli ievadot vienu atstarpi:"

read input

array=($input)

N=${#array[@]}
echo "Elementu skaits ir $N"

n=0 #Šis ir palīgmainīgais, kurš tālāk kodā tiks izmantots, lai parādītu mainīgā kārtas numuru skaitļu virknē.
a=${array[$n]} #Mainīgajam a tiek piešķirta sakitļu virknes n-tā (šajā gadījumā nulltā) elementa vērtība.
while (( $n < $N-1 )) #Kamēr mainīgā n skaitliskā vērtība ir mazāka par skaitli, ko iegūst no kopējā elementu
                      # skaita atņemot 1, tikmēr
do                    # izpildīt sekojošo
  n=`expr $n + 1` #n tiek piešķirta vērtība, kas ir vienāda ar izteiksmi mainīgais n plus 1.
  if (( $a < ${array[$n]} )) #Ja izpildās nosacījums, ka mainīgais a (kurš ir masīva n-tais elements) ir mazāks
                             #par masīva elementu, kura kārtas numuru norāda mainīgais n (tātad nākamais elements),
  then a=${array[$n]} #tad a tiek piešķirta nākamā elementa vērtība.
  fi #Šeit beidzas if nosacījums.
done #Šeit beidzas cikls. Pēc šīs rindiņas atkārtoti tiek pārbaudīts nosacījums, kas atrodas aiz teksta 'while'.
     #Ja šis nosacījums ir patiess, tad atkal tiek izpildīts cikls. Ja šis nosacījums ir aplams, cikla pildīšana
     #tiek pabeigta.

echo "Vislielākā vērtība skaitļu virknē ir $a."

n=0
a=${array[$n]}
while (( $n < $N-1 ))
do
  n=`expr $n + 1`
  if (( $a > ${array[$n]} ))
  then a=${array[$n]}
  fi
done
echo "Vismazākā ievadītā vērtība skaitļu virknē ir $a."

for ((i=0;i<count;i++)) #i ir palīgmainīgais, kura sākuma vērtība ir 0; kamēr palīgmainīgā skaitliskā vērtība ir
                        #mazāka par elementu virknes skaitu, palīgmainīgajam i pieskaitīt 1 pirms katra cikla sākuma.
do #Ciklā izpildīt sekojošo:
echo -n " ${array[i]} " #Attēlot masīva elementu ar kārtas numuru i (katru jaunā rindā).
done #Šeit beidzas cikls.
echo "Ievadītie skaitļi augošā secībā:"

for((i=0;i<$N;i++))
do

   for((j=i+1;j<$N;j++))
   do
     if((array[i]>array[j]))
     then
     temp=${array[i]};
     array[$i]=${array[j]};
      array[$j]=$temp;

     fi
   done

done

for((i=0;i<$N;i++))
do
echo ${array[i]};
done
#tagad veidojam mediānu

if (( N % 2 == 1 )); then     # Odd number of elements
    val="${array[ $((N/2)) ]}"
else                            # Even number of elements
    val="$(( ( array[$((N/2))] + array[$((N/2-1))] ) / 2 ))"
fi
#echo "Mediāna ir:"
printf "Mediāna ir %d.\n" "$val"


