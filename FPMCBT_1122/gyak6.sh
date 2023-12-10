#!/bin/bash
declare -i x1 y1 x2 y2 a1 a2 b1 b2 ter
read -p "Adja meg az elso pont abszcisszajat: " x1
read -p "Adja meg az elso pont ordinatajat: " y1
read -p "Adja meg a masodik pont abszcisszajat: " x2
read -p "Adja meg a masodik pont ordinatajat: " y2

if [[ ! "$x1" || ! "$x2" || ! "y1" || ! "y2" ]]; then
	echo "Hiba, egesz szamokat hasznaljon"
	exit 1
fi

if [[ "$x1" > "$x2" ]]; then
	a=x1-x2
else
	a=x2-x1
fi

if [[ "$y1" > "y2" ]]; then
	b=y1-y2
else
	b=y2-y1
fi

ter=a*b
echo "A teglalap terulete: $ter"
