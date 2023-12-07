#!/bin/bash

read -p "Adja meg a tömb méretét! " N

regex='^[0-9]+$'

if ! [[ $N =~ $regex ]] ; then
    echo "Pozitív számot adjon meg!" 1>&2;
    exit 1
fi

if [[ $N -eq 0 ]]; then
    echo "A tömb mérete nem lehet 0!" 1>&2
    exit 1
fi

declare -a tomb

echo "A tömb elemei:"

for (( i = 0; i < N; i++ ));
do
    tomb[$i]=$((RANDOM % 100 + 1))
    printf "${tomb[$i]} "
done
echo

osszeg=tomb[0]
min_index=0
max_index=0

for (( i = 1; i < N; i++ ));
do
    osszeg=$((osszeg + tomb[i]))
    if [[ ${tomb[$i]} -lt ${tomb[$min_index]} ]]; then
        min_index=$i
    fi
    if [[ ${tomb[$i]} -gt ${tomb[$max_index]} ]]; then
        max_index=$i
    fi
done
echo

atlag=$(echo "$osszeg / $N" | bc)
((min_index++))
((max_index++))

echo "Minimum helye és értéke: $min_index.: ${tomb[$min_index - 1]}"
echo "Maximum helye és értéke: $max_index.: ${tomb[$max_index - 1]}"
echo "Összeg: $osszeg"
echo "Átlag: $atlag"
