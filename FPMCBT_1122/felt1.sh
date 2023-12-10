#!/bin/bash
declare -i a b ter
read -p "Adja meg az a oldalat: " a
read -p "Adja meg a b oldalaz: " b

if [[ ! "$a" || ! "$b" ]]; then
	echo "Hiba, egesz szamok kellenek"
	exit 1
fi

ter=$a*$b
echo "A teglalap terulete: $ter"

