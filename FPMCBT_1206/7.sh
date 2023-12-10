#!/bin/bash

random() {
    local N=${1:-5}
    local x=${2:-1}
    local y=${3:-90}
    for ((i=0; i<N; i++)); do
       	number=$((RANDOM % (y - x + 1) + x))
        echo $number
    done
}
echo "Szamok 800 es 900 kozott: "
random 10 800 900
echo "Szamok -10 es 10 kozott:"
random 15 -10 10
