#!/bin/bash

if [ -e volanbusz_gtfs.zip ]; then
	rm volanbusz_gtfs.zip
fi

if [ -d volanbusz_gtfs ]; then
	rm -r volanbusz_gtfs
fi

wget "https://gtfs.kti.hu/public-gtfs/volanbusz_gtfs.zip"
unzip volanbusz_gtfs.zip -d volanbusz_gtfs
cat volanbusz_gtfs/routes.txt | grep "Felsőtárkány"
