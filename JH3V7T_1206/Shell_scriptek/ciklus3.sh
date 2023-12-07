#!/bin/bash

if [[ $# -lt 1 ]]; then
    echo "Nem adott meg bemeneti paramétert!" 1>&2
    exit 1
fi

input=$1
regex='^[0-9]+$'

if ! [[ $input =~ $regex ]] ; then
    echo "Pozitív számot adjon meg!" 1>&2;
    exit 1
fi

if [[ $input -le 1 ]]; then
    echo "A megadott szám nem prímszám."
    exit 0
fi

negyzetgyok=$(echo "sqrt($input)" | bc)

for (( i = 2; i <= negyzetgyok; i++ ));
do
    if [ $((input % i)) -eq 0 ]; then
        echo "A megadott szám nem prímszám."
        exit 0
    fi
done

echo "A megadott szám prímszám."
