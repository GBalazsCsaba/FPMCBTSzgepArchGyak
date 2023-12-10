#!/bin/bash

if [ -e gtfs.zip ]; then
	rm gtfs.zip
fi

if [ -d gtfs ]; then
	rm -r gtfs
fi

wget "https://gtfsapi.mvkzrt.hu/gtfs/gtfs.zip"
unzip gtfs.zip -d gtfs
allomas=$1
talal=$(cat gtfs/routes.txt | grep "$allomas")

if [ -n "$talal" ]; then
	echo "$talal"
else
	echo "Hiba, a megadott allomas sosem vegallomas"
fi
