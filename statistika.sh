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

   for((j=i+1;j<$N;j++)) # j tiek piešķirta vērtība, kas vienāda ar izteiksmi i + 1 (tas būs nākamais
                         # elements); kamēr j vērtība ir mazāka par
                         # elementu skaitu, ko apzīmē mainīgais N, j vērtību pirms katra cikla sākuma
                         # palielināt par 1.
   do # izpildīt sekojošo
     if((array[i]>array[j])) # ja masīva elements ar kārtas numuru i ir lielāks par masīva elementu ar
                             # kārtas numuru j,
     then # tad
     temp=${array[i]}; # palīgmainīgajam temp tiek piešķirta masīva elementa ar kārtas numuru i vērtība.
     array[$i]=${array[j]}; # Šo rindu nesaprotu.
      array[$j]=$temp; # Šo rindu nesaprotu.

     fi # Šei beidzas if nosacījums.
   done # Šeit beidzas apakšcikls.

done # Šeit beidzas cikls.

for((i=0;i<$N;i++)) # Šeit sākas sakārtotās skaitļu virknes attēlošanas cikls.
                    # i tiek piešķirta vērtība, kura vienāda ar 0 (kā sākuma vērtība); kamēr i skaitliskā vētība
                    # ir mazāka par elementu skaitu: katrā ciklā i skaitlisko vērtību palielināt par 1.
do # Izpildīt sekojošo
echo ${array[i]}; # Katrā ciklā attēlot vienu mainīgo (tie tiks attēloti katrs savā rindā).
done # Šeit beidzas sakārtotās skaitļu virknes attēlošanas cikls.
#tagad veidojam mediānu

if (( N % 2 == 1 )); then     # Odd number of elements (nepāra elementu skaits)
    val="${array[ $((N/2)) ]}"
else                            # Even number of elements (pāra elementu skaits)
    val="$(( ( array[$((N/2))] + array[$((N/2-1))] ) / 2 ))"
fi
printf "Mediāna ir %d.\n" "$val"


