#echo "Ievadiet elementu skaitu:"
#read n
#echo "Ievadiet skaitļus:"
#declare -a a

#! /bin/bash
echo "Lūdzu ievadiet skaitļu virkni, starp katru skaitli ievadot vienu atstarpi:"

read input

a=($input)
#echo "Jūsu ievadītā skaitļu virkne ir šāda:"
#echo ${array[@]}

N=${#a[@]}
echo "Elementu skaits ir $N"

#for((i=0;i<$N;i++))
#do
#read a[$i]
#done
echo "Ievadītie skaitļi augošā secībā:"

for((i=0;i<$N;i++))
do

   for((j=i+1;j<$N;j++))
   do
     if((a[i]>a[j]))
     then
     temp=${a[i]};
     a[$i]=${a[j]};
      a[$j]=$temp;

     fi
   done

done

for((i=0;i<$N;i++))
do
echo ${a[i]};
done

#tagad veidojam mediānu

#nel=${#arr[@]}
if (( N % 2 == 1 )); then     # Odd number of elements
    val="${a[ $((N/2)) ]}"
else                            # Even number of elements
    val="$(( ( a[$((N/2))] + a[$((N/2-1))] ) / 2 ))"
fi
printf "%d\n" "$val"
