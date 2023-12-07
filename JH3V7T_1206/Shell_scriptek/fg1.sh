#!/bin/bash

osszead() {

    local x=0

    for i in $*;
    do
        x=$((x + i))
    done

    echo $((x))
}

osszeg=$(osszead 6 66 666)

if [[ $? -ne 0 ]]; then
    echo 0;
else
    echo $osszeg    
fi

osszeg=$(osszead)

if [[ $? -ne 0 ]]; then
    echo 0;
else
    echo $osszeg    
fi
