#!/bin/bash

read -p "Adja meg a keresett nevet: " nev
sor=$(cat nev_id_parok.txt | grep $nev)

if [[ -z $sor ]]; then
  echo "Nincs ilyen nev!" 1>&2
  exit 1
fi

id=$(echo $sor | cut -d ':' -f 2)
echo $id
