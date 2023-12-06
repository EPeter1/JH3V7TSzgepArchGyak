#!/bin/bash

if [[ $# -ne 2 ]]; then
	echo "Két bemenetre van szükség, $# adott." 1>&2
	exit 1
fi

reg_ex='^[0-9.]+$'
if [[ ! $1 =~ $reg_ex || ! $2 =~ $reg_ex ]]; then
	echo "Mindkét bemenetnek pozitív egész számnak kell lennie!" 1>&2
	exit 1
fi

terulet=$(echo "$1 * $2" | bc -l)

echo "A téglalap területe: $terulet"
