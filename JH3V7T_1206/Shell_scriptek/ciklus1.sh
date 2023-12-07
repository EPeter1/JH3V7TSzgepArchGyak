#!/bin/bash

for (( i = 0; i <= 10; i++ ));
do
    printf "$i "
done
echo

i=0
while [[ $i -le 10 ]];
do
    printf "$i "
    i=$((i + 1))
done
echo

i=0
until [[ $i -gt 10 ]];
do
    printf "$i "
    i=$((i + 1))
done
echo
