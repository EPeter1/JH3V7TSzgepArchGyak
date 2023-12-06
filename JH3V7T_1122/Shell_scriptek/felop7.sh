#!/bin/bash

if [ -e gtfs.zip ]; then
	rm gtfs.zip
fi

if [ -d gtfs ]; then
	rm -r gtfs
fi

wget "https://gtfsapi.mvkzrt.hu/gtfs/gtfs.zip"
unzip gtfs.zip -d gtfs
szoveg=$(cat gtfs/routes.txt | grep $1)

if [[ -z $szoveg ]]; then
    echo "Nincs ilyen végállomás!" 1>&2
    exit 1
else
    cat gtfs/routes.txt | grep $1
fi
