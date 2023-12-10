#!/bin/bash
age() {
	IFS='.' read -r by bm bd <<< "$1"
	IFS='.' read -r cy cm cd <<< "$(date +'%Y.%m.%d')"
	by=$((10#$by))
	bm=$((10#$bm))
	bd=$((10#$bd))
	cy=$((10#$cy))
	cm=$((10#$cm))
	cd=$((10#$cd))
	age=$((cy - by - (cm < bm || (cm == bm && cd < bd))))
	echo "$age"
}

nev=$1
file=$2
szul=$(grep "^$nev" "$file" | awk -F';' '{print $2}')

if [[ -z "$szul" ]]; then
	echo "Hiba, nincs ilyen nev"
	exit 1
fi

age=$(age "$szul")
echo "$nev $age eves"
