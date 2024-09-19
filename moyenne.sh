#! /bin/bash

set -x
echo "Saisissez une variable entière"
read i
echo "La variable saisie i vaut $i"
((i++))
echo "i a été maintenant incrémentée de 1"
((j=i*4))
echo "La variable j vaut $j"
((k=(i+j)/2))
echo "La moyenne de i et j vaut $k"