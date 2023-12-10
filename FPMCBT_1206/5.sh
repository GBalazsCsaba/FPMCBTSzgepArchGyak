#!/bin/bash
read -p "Adja meg a tomb meretet (pozitiv egesz szam): " N
if ! [[ "$N" =~ ^[1-9][0-9]*$ ]]; then
	echo "Hiba, N-nek pozitiv egesz szamnak kell lennie"
	exit 1
fi
tomb=()
min=100
max=0
sum=0
for ((i=0; i<N; i++)); do
	tomb[i]=$((RANDOM % 100 + 1))
	sum=$((sum + tomb[i]))
	if [ "${tomb[i]}" -lt "$min" ]; then
		min=${tomb[i]}
	fi
	if [ "${tomb[i]}" -gt "$max" ]; then
		max=${tomb[i]}
	fi
done
echo "Tomb elemei: ${tomb[@]}"
echo -n "Minimum: ${min} ami a tomb "
s=0
for ((i=0; i<N; i++)); do
	if [ "${tomb[i]}" -eq "$min" ]; then
		s=$i
		echo -n "$((s + 1)). "
	fi
done
echo "eleme"
echo -n "Maximum: ${max} ami a tomb "
for ((i=0; i<N; i++)); do
	if [ "${tomb[i]}" -eq "$max" ]; then
		s=$i
		echo -n "$((s + 1)). "
	fi
done
echo "eleme"
echo "Elemek osszege: ${sum}"
atlag=$((sum / N))
echo "Elemek atlaga: ${atlag}"
