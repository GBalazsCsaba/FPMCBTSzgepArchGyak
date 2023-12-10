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

while true; do
	read -p "Adja meg a szuletesi datumat YYYY.MM.DD formatumba: " szul
	if [[ ! $szul =~ ^[0-9]{4}\.[0-9]{2}\.[0-9]{2}$ ]]; then
		echo "Hiba, nem felel meg a megadott formatum"
	else
		break
	fi
done

age=$(age "$szul")
echo "$age"
