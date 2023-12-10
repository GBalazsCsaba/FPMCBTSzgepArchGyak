#!/bin/bash
tomb=()
echo "A tomb: "
for ((i=0;i<10;i++)); do
	tomb[i]=$((RANDOM % 100 + 1))
	echo -n "${tomb[i]} "
done
echo -e "\nA tomb ertekei novelve 1-el: "
for ((i=0;i<10;i++)); do
	tomb[i]=$((tomb[i] + 1))
	echo -n "${tomb[i]} "
done
echo -e "\n"
