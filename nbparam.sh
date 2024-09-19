#!/bin/bash

if [ $# -eq 0 ] ; then
    echo -e "\t Le contenu du répertoire courant"
    ls -l
elif [ $# -eq 1 ] ; then 
    if [ ! -e $1 ] ; then 
        echo -e "\t Erreur $1 n'existe pas"      
    elif [ -f $1 ] ; then 
        echo -e "\t Le contenu du fichier $1"
        cat $1
    elif [ -d $1 ] ; then
        echo -e "\t Le contenu du répertoire $1"
        ls -l $1
    fi
elif [ $# -eq 2 ] ; then 
    if [ ! -f  $1 ] ; then 
        echo -e "\t Erreur : $1 doit être un fichier "
    elif [ -f $2 ] ; then 
        echo -e "\t Erreur : $2 ne doit pas être un fichier "
    else
    echo -e "\t Le fichier $1 est copier dans $2 "  
    cp $1 $2 
    fi     
else 
    echo -e "\tErreur il y trop de paramètres (Max = 2)"
fi