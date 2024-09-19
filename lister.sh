#! /bin/bash

read -p "Entrez un nom de fichier : " nomFic

if [ ! -e $nomFic ] ; then 
  echo -e "\t Le fichier $nomFic n'existe pas"
elif [ ! -s $nomFic ] ; then 
  echo -e "\t Le fichier $nomFic est de taille nulle"
elif [ -f $nomFic ] ; then 
  echo -e "\t Le contenu fichier du $nomFic est : "
  cat $nomFic  
elif [ -d $nomFic ] ; then 
  echo -e "\t Le contenu du répertoire $nomFic est : "
  ls $nomFic
else
  echo -e "\t Autre type ... "        
fi 
