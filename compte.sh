#! /bin/bash

if [ $# -lt 1 ] ; then 
    echo -e "\t il faut au moins un argument"
    exit 1
fi

if [ -f $1 ] ; then 
    res=$(du $1)
    echo "\$res contient ${#res[@]} élément(s)" 
    echo "Le premier élément est : >${res[0]}<"
    res2=($(du $1))
    echo "\$res2 contient ${#res2[@]} élément(s)" 
    echo "Le premier élément est : >${res2[0]}<"
fi

