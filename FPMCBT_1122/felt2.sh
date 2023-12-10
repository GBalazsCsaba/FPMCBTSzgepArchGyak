#!/bin/bash
read -p "Adja meg a nevet: " nev
talal=$(grep -E "^$nev:" nev_id_parok.txt)
if [ -n "$talal" ]; then
	id=$(echo "$talal" | cut -d ':' -f 2)
	echo "Az id: $id"
else
	echo "Hiba, a megadott nev nincs a fajlban"
fi

