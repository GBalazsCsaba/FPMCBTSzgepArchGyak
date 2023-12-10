#!/bin/bash
input="$1"
output="out.txt"
sed 's/happy/nem gondoltam a vizsgaidoszakra/g' "$input" > "$output"
printf "Az in.txt tartalma: %s\n" "$(cat "$input")"
printf "Az out.txt tartalma: %s\n" "$(cat "$output")"
