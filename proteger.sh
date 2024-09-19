#! /bin/bash

read -p "Entrez un nom de fichier : " nomFic

if [ ! -f $nomFic ] ; then
  echo -e "\n \t Le fichier $nomFic n'existe pas\n"
else   
  chmod 700 $nomFic  ### pas de chmod 600 $nomFic
  echo -e "\t>>> Le fichier $nomFic est protégé <<<"
  ls -l $nomFic   
fi
