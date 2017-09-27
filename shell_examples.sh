#!/bin/bash

#7. piemeers
#skaitliskaa_veertiiba='expr 2 + 2'
#echo "Summas vērtība: "$skaitliskaa_veertiiba
#echo "Summas vērtība: $skaitliskaa_veertiiba"
skaitliskaa_veertiiba=`expr 2 + 2`
echo "Summas vērtība: "$skaitliskaa_veertiiba
echo "Summas vērtība: $skaitliskaa_veertiiba"
#skaitliskaa_veertiiba=expr 2 + 2
#echo "Summas vērtība: "$skaitliskaa_veertiiba
#echo "Summas vērtība: $skaitliskaa_veertiiba"

#6. piemērs
#echo $*
#echo "--------"
#kaartas_numurs=1
#for arguments in $*
#do
#    echo $kaartas_numurs". arguments - "$arguments
#    kaartas_numurs=$kaartas_numurs+1
#done

#5. piemers
#echo "Skriptam nodoto argumentu skaits: " $#
#echo "Argumentu saraksts (attēlošana/grupēšana veids 1): "$*
#echo "Argumentu saraksts (attēlošana/grupēšana veids 1): "$@
#echo "Pirmā argumenta vērtība: "$1
#echo "Otrā argumenta vērtība: "$2
#echo $1$2

#4. piemers
#echo $!

#3. piemērs
#NAME="Vārds Uzvārds"
#echo $NAME
#unset NAME
#echo $NAME

#2. piemērs
#NAME="Vārds Uzvārds"
#readonly NAME
#echo $NAME
#NAME="Vārds Uzvārds"
#echo $NAME



#1. piemērs
#NAME="Vārds Uzvārds"
#echo $NAME

history > history_20170927.txt

