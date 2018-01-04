#! /bin/bash
echo "Lūdzu ievadiet skaitļu virkni, starp katru skaitli ievadot vienu atstarpi:"

read input

array=($input)
#echo "Jūsu ievadītā skaitļu virkne ir šāda:"
#echo ${array[@]}

N=${#array[@]}
echo "Elementu skaits ir $N"

n=0
a=${array[$n]}
while (( $n < $N-1 ))
do
  n=`expr $n + 1`
  if (( $a < ${array[$n]} ))
  then a=${array[$n]}
  fi
done
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

for ((i=0;i<count;i++))
do
echo -n " ${array[i]} "
done
#šeit iekopēju
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
printf "Mediāna ir %d\n" "$val"


