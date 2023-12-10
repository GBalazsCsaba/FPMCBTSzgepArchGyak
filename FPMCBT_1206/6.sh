#!/bin/bash

sum() {
	s=0
	if [ "$#" -eq 0 ]; then
		echo 0
		return
	fi
	for arg in "$@"; do
		s=$((s + arg))
	done
	echo $s
}
eredmeny=$(sum 5 4 2 9 7)
echo "Eredmeny: $eredmeny"
eredmeny=$(sum)
echo "Eredmeny: $eredmeny"
