#!/bin/bash

if [ -z "$1" ]; then
	echo "Hiba, adjon meg egy pozitiv egesz szamot"
	exit 1
fi
if ! [[ "$1" =~ ^[1-9][0-9]*$ ]]; then 
	echo "Hiba, a bemeneti parameter nem pozitiv egesz szam"
	exit 1
fi

prim() {
	n=$1
	if [ $n -lt 2 ]; then
		return 1
	fi
	for ((i=2; i*i<=$n; i++)); do
		if [ $((n % i)) -eq 0 ]; then
			return 1
		fi
	done
	return 0
}

prim "$1"

if [ $? -eq 0 ]; then
	echo "$1 prim"
else
	echo "$1 nem prim"
fi
