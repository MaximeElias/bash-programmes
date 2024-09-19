#! /bin/bash

read -p "Arrêter (o/n) : " reponse

while [ $reponse =! "o" -a $reponse =! "O" ] ; do
    sleep 1
    read -p "Arrêter (o/n) : " reponse
done
echo "fin du programme"