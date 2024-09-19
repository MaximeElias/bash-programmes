#! /bin/bash

echo "Entrez un nom de répertoire"
read nomRep

if [ ! -d "$nomRep" ] ; then
  mkdir "$nomRep"
fi

cd "$nomRep"
echo "On se trouve dans le répertoire $(pwd)"