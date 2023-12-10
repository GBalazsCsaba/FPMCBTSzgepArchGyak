#!/bin/bash
file=$1

if [ ! -f "$file" ]; then
	echo "Hiba, file nem talalhato"
	exit 1
fi

read -p "Adja meg a nevet: " nev
talal=$(grep -E "^$nev:" $file)
if [ -n "$talal" ]; then
	id=$(echo "$talal" | cut -d ':' -f 2)
	echo "Az id: $id"
else
	echo "Hiba, a megadott nev nincs a fajlban"
fi
