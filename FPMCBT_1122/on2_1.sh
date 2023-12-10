#!/bin/bash
declare -f a b ter
read -p "Adja meg az a oldalat: " a
read -p "Adja meg a b oldalaz: " b

if [[ ! "$a" || ! "$b" ]]; then
	echo "Hiba, lebegopontos szamok kellenek"
	exit 1
fi

ter=$(echo "$a * $b" | bc)
echo "A teglalap terulete: $ter"
