#!/bin/bash
read -p "Adja meg a felhasznalonevet: " n
read -p "Adja meg a vertiot: " v
read -p "Adja meg a webhelyet: " s
echo -n  "username: " > config.yml
echo "$n" >> config.yml
echo -n "version: " >> config.yml
echo "$v" >> config.yml
echo -n "site: " >> config.yml
echo "$s" >> config.yml
