#!/bin/bash
input=people1.csv
output=fpmcbt_people.csv

sed 's/gmail/citromail/g' "$input" > "$output"
