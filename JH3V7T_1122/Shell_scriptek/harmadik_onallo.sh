#!/bin/bash

read -p "Adja meg a keresett ember nevét: " nev
cat people.csv | grep "$nev" | cut -f 2 -d ';'
