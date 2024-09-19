#! /bin/bash

if [ $# -lt 1 ] ; then 
    echo -e "\t il faut au moins un argument"
    exit 1
fi
echo "\$# = $#"
echo "\$* = $*"
echo "\$@ = $@"
echo "Premier argument : $1"
echo "Dernier argument : ${!#}"

echo -e "\t *** Methode 1 :"
i=1
while [ $i -le $#  ] ; do 
    echo ${!i}
    ((i++))
done  

echo -e "\t *** Methode 2 :"
for nomFich in $* ; do 
    echo $nomFich
done 

echo -e "\t *** Methode 3 :"
while [ $# -gt 0 ] ; do 
    echo $1
    shift
done 

