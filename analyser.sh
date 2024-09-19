#! /bin/bash

read -p "Entrez un nom de fichier : " nomFic

if  [ ! -f $nomFic ] ; then 
  echo -e "\t $nomFic n'est pas un fichier "
  exit 1
fi

case $nomFic in
	*.sh) echo "$nomFic est un fichier sh";;
	*.py) echo "$nomFic est un fichier python";;
	*.pdf) echo "$nomFic est un fichier pdf";;
  *.java) echo "$nomFic est un fichier pdf";;
  *.jpg) echo "$nomFic est un fichier image au format jpg";;
	*) echo -e "\t $nomFic a une autre extenson" ;;
esac 