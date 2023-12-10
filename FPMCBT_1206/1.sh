#!/bin/bash
echo -n "For: "
for ((i=1;i<11;i++)); do
	echo -n "$i "
done

echo -e -n "\nWhile: "
i=1
while [[ $i -le 10 ]]; do
	echo -n "$i "
	((i++))
done
echo -e -n "\nUntil: "
i=1
until [[ $i -gt 10 ]]; do
	echo -n "$i "
	((i++))
done
echo -e "\n"
