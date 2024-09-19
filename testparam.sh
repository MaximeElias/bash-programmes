#! /bin/bash

echo "Je suis un script bash"
echo "J'ai recu $# paramètres"
echo "qui sont : $*"

if [ $# -gt 0 ] ; then
  echo "et le premier est : $1"
fi