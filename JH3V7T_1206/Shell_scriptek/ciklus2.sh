#!/bin/bash

veletlen=$((RANDOM % 101))

echo "A véletlen generált szám: $veletlen"
echo "Az ettől kisebb négyzetszámok:"

for (( i = 1; i * i < $veletlen; i++ ));
do
  echo -n "$((i * i)) "
done
echo
