#!/bin/bash

if [ ! -e $1 ]; then
    echo "A fájl nem létezik!" 1>&2
    exit 1
fi

if [ ! -r $1 ]; then
    echo "A fájl nem olvasható!" 1>&2
    exit 1
fi

read -p "Adja meg a keresett nevet: " nev
sor=$(cat $1 | grep $nev)

if [[ -z $sor ]]; then
  echo "Nincs ilyen nev!" 1>&2
  exit 1
fi

id=$(echo $sor | cut -d ':' -f 2)
echo $id
