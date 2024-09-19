#! /bin/bash

echo “Résultat de la commande ls sur mon compte” > res-ls.txt
echo " " >> res-ls.txt
ls >> res-ls.txt

echo " " >> res-ls.txt

echo “Résultat de la commande ls à la racine” >> res-ls.txt
echo " " >> res-ls.txt
ls / >> res-ls.txt

