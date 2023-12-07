#!/bin/bash

general() {
    local N=${1:-5}
    local x=${2:-1}
    local y=${3:-90}
    tartomany=$((y - x + 1))

    declare -a tomb

    for (( i = 0; i < N; i++ ));
    do
        tomb[$i]=$((RANDOM % tartomany + x))
    done

    echo ${tomb[*]}
}

echo "Alapértelmezetten generált számok:"
general
echo
echo "10 db véletlen szám a [800, 900] tartományból:"
general 10 800 900
echo
echo "15 db véletlen szám a [-10, 10] tartományból:"
general 15 -10 10
