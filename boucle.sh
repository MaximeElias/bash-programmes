#! /bin/bash

i=1

while [ $i -lt 5 ] ; do
    echo "Tentative $i"
    sleep 2
    ((i++))
done

echo "fin"