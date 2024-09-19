#! /bin/bash

if [ $# -gt 0 ] ; then
  nomOp=$2
  chiffre1=$1
  chiffre2=$3
  if [ $nomOp == + ] ; then
    echo $chiffre1 + $chiffre2 = $(($chiffre1+$chiffre2))
  elif [ $nomOp == - ] ; then
    echo $chiffre1 - $chiffre2 = $(($chiffre1-$chiffre2))
  elif [ $nomOp == x ] ; then
    echo $chiffre1 x $chiffre2 = $(($chiffre1*$chiffre2)) 
  elif [ $nomOp == / ] ; then
    if [ $chiffre2 == 0 ] ; then
      echo "Erreur : division par 0"
    else 
      echo $chiffre1 / $chiffre2 = $(($chiffre1/$chiffre2)) "%" $(($chiffre1%$chiffre2))
    fi
  fi
else
  echo echo "pas de paramètres"
fi