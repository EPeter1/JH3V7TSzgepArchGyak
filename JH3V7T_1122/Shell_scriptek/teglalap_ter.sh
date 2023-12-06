#!/bin/bash

read -p "Adja meg az x1 koordinátát: " x1
read -p "Adja meg az y1 koordinátát: " y1
read -p "Adja meg az x2 koordinátát: " x2
read -p "Adja meg az y2 koordinátát: " y2

hossz_x=$((x2 - x1))
hossz_y=$((y2 - y1))
terulet=$((hossz_x * hossz_y))

echo "A téglalap területe: ${terulet/-/}"
