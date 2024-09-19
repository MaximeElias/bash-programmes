#! /bin/bash

read -p "Entrez un nom de fichier : " nomFic

if [ ! -f $nomFic ] ; then
  echo -e "\n \t Le fichier $nomFic n'existe pas\n"
  exit 1
fi

repPoubelle=~/poubelle   

if [ ! -d  $repPoubelle ] ; then 
  mkdir $repPoubelle
fi

mv $nomFic $repPoubelle  
echo -e "\t>>> Le fichier $nomFic est déplacé dans la $repPoubelle <<<"
ls -l $repPoubelle/$nomFic 