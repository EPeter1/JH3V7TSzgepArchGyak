#!/bin/bash

read -p "Adja meg a születésnapját év.hónap.nap formátumban: " szuletes_nap

reg_ex='^[0-9]{4}\.[0-9]{2}\.[0-9]{2}$'
if [[ ! $szuletes_nap =~ $reg_ex ]]; then
  echo "Hibás formátum!" 1>&2
  exit 1
fi

ev=$(echo $szuletes_nap | cut -f 1 -d '.')
honap=$(echo $szuletes_nap | cut -f 2 -d '.')
nap=$(echo $szuletes_nap | cut -f 3 -d '.')

date -d "$ev-$honap-$nap" > /dev/null || exit 1

mp_szuletes=$(date -d "$ev-$honap-$nap" +%s)
mp_most=$(date +%s)
kor=$((mp_most - mp_szuletes))

echo $(( kor / 365 / 24 / 60 / 60 ))
