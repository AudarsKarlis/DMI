#! /bin/bash
echo "Ievadiet argumentu:"
read input
x=$input

a="Skaitlis:" # Mainīgajam a tiek piešķirta vērtība "Skaitlis".
b="%1" # Mainīgajam b tiek piešķirta vērtība "%1", kura apzīmē atlikumu no dalījuma ar 1.
c="%2" # Mainīgajam c tiek piešķirta vērtība "%2", kura apzīmē atlikumu no dalījuma ar 2.
d="%3" # Mainīgajam d tiek piešķirta vērtība "%3", kura apzīmē atlikumu no dalījuma ar 3.
e="%4" # Mainīgajam e tiek piešķirta vērtība "%4", kura apzīmē atlikumu no dalījuma ar 4.
f="%5" # Mainīgajam f tiek piešķirta vērtība "%5", kura apzīmē atlikumu no dalījuma ar 5.
g="%10" # Mainīgajam g tiek piešķirta vērtība "%10", kura apzīmē atlikumu no dalījuma ar 10.

printf "%16.9s" $a # Mainīgā a vērtības pēdējā rakstzīme tiek attēlota 16. kursora vietā,
                    # skaitot no ekrāna kreisās puses. Tā kā elementā a ir 9 rakstzīmes, tad
                    # nākamais skaitlis aiz skaitļa 16 ir skaitlis 9 (skaitlis šajā gadījumā
                    # norāda, ka no 16 kursora vietām tikai 9 tiks attēlots kāds
                    # simbols (šajā gadījuma gan jāsāk skaitīt no 16 kursora vietas
                    # 9 vietas pa kreisi)).
printf "%8.2s" $b # Mainīgā b vērtības pēdējā rakstzīme tiek attēlota 8. kursora vietā,
                  # skaitot no pēdējās attēlotās rakstzīmes (tātad (16 + 8 = 24) 24. kursora
                  # vietā, skaitot no ekrāna kreisās puses). Tā kā mainīgā b vērtība satur
                  # divas rakstzīmes, tad nākamais skaitlis aiz skaitļa 8 ir skaitlis 2.
printf "%8.2s" $c
printf "%8.2s" $d
printf "%8.2s" $e
printf "%8.2s" $f
printf "%8.3s\n" $g # Mainīgā g vērtības pēdējā rakstzīme tiek attēlota 8. kursora vietā,
                    # skaitot no pēdējās attēlotās rakstzīmes šajā rindā. Tā kā mainīgā g
                    # vērtība satur trīs rakstzīmes, tad nākamais skaitlis aiz skaitļa 8 ir 
                    # skaitlis 3.

y=`expr $x + 10` # Tiek definēts palīgmainīgais y, kura vērtība ir vienāda ar ievadītā mainīgā
                 # x vērtību plus 10.
while (( $x < $y )) # Kamēr mainīgā x skaitliskā vērtība ir mazāka par mainīgā y skaitlisko
                    # vērtību
do # izpildīt sekojošo:
  printf "%16.16s" $x # Attēlot mainīgo x (mainīgā x pēdējo rakstzīmi) ar tikpat lielu
                      # atstarpju skaitu no kreisās puses, cik "cepurītes" pirmā mainīgā
                      # pēdējo rakstzīmi.
  printf "%8.8s" `expr $x % 1` # Attēlot mainīgā x dalījuma ar 1 skaitlisko vērtību 8. kursora
                               # vietā, skaitot no iepriekšējās rakstzīmes šajā rindā.
  printf "%8.8s" `expr $x % 2` # Attēlot mainīgā x dalījuma ar 2 skaitlisko vērtību 8. kursora
                               # vietā, skaitot no iepriekšējās rakstzīmes šajā rindā.
  printf "%8.8s" `expr $x % 3`
  printf "%8.8s" `expr $x % 4`
  printf "%8.8s" `expr $x % 5`
  printf "%8.8s\n" `expr $x % 10` # Attēlot mainīgā x dalījuma ar 10 skaitlisko vērtību 8.
                                  # kursora vietā, skaitot no iepriekšējās rakstzīmes šajā
                                  # rindā. Pārcelt kursoru nākamajā rindā (to norāda \n).
  x=`expr $x + 1` # Mainīgajam x tiek piešķirta vērtība, kura tiek iegūta, esošajai mainīgā
                  # x skaitliskajai vērtībai pieskaitot 1.
done # Šīs ir cikla beigas.

# apskatīt un palasīt par bash positioning
# https://bash.cyberciti.biz/guide/Echo_Command
