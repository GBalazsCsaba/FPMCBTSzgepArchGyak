#!/bin/bash

random=$((RANDOM % 100 + 1))

echo "Veletlen szam: $random"
echo "Kisebb negyzetszamok:"

i=2
a=1
until [[ $a -ge $random ]]; do
	echo $a
	a=$((i * i))
	((i++))
done
