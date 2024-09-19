#! /bin/bash

if [ $# -lt 1 ] ; then 
    echo -e "\t il faut au moins un argument"
    exit
fi

if [ -d $1 ] ; then 
    for f in $1/* ; do 
        if [ -f $f ] ; then
            nomFic="${f##*/}"
            read -p "Voulez-vous sauvegarder le fichier $nomFic ? " reponse
            if [ $reponse == o ] ; then
                cd $1
                cp $nomFic $nomFic.bak
                cd ..
            fi
        fi
    done
fi