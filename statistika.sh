#! /bin/bash
echo "Lūdzu ievadiet skaitļu virkni, starp katru skaitli ievadot vienu atstarpi:"

read input

array=($input)
echo "Jūsu ievadītā skaitļu virkne ir šāda:"
echo ${array[@]}

N=${#array[@]}
echo $N

n=0
a=${array[n]}
echo $a


n=`expr $n + 1`
a=${array[n]}
echo $a

n=`expr $n + 1`
echo ${array[n]}

#echo ${array_iden[5]}

#name[index]=value
#Unix[0]='Red hat' 
#echo ${Unix[0]}
#echo "Lūdzu ievadiet skaitļu virkni!"
# Vai arī katru elementu var ievadīt atsevišķi?
#read skaitļu virkni #ievadītie elementi ir jāuztver kā skaitļi
# nolasīt ievadīto skaitļu skaitu
# pirmajam skaitlim piešķirt apzīmējumu x0
# otrajam skaitlim piešķirt apzīmējumu x1
# trešajam skaitlim piešķirt apzīmējumu x2
# n-tajam skaitlim piešķirt apzīmējumu xn
# n+1-ajam skaitlim piešķirt apzīmējumu xn+1

# $a piršķirt elementa x0 vērtību
# if a < x1 vērtību then a = x1 vērtība, else $a paliek piešķirtā x0 vērtība

# if a < x2 vērtību, then a = x2 vērtīb, else $a paliek tā piešķirtā vērtība
