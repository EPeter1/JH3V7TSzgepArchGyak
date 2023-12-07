#!/bin/bash

declare -a tomb

echo "A tömb elemei:"

for (( i = 0; i < 10; i++ ));
do
    tomb[$i]=$((RANDOM % 50 + 1))
    printf "${tomb[$i]} "
done
echo
echo

for (( i = 0; i < 10; i++ ));
do
    tomb[$i]=$((tomb[i] + 1))
done

echo "A tömb elemei 1-el megnövelve:"

for elem in ${tomb[*]};
do
    printf "$elem "
done
echo
