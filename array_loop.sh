#!/bin/bash
array=( "$@" )
N=$#
#echo array
#echo ${array[0]}
#echo ${array[1]}
k=0 #k=`expr $N - 1`
while (( $k < $N)) # $k >= 0
do
    echo ${array[$N - $k - 1]}
    k=`expr $k + 1` # k=`expr $k -1`
done
