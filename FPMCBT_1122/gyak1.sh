#!/bin/bash
read -p "Irja be az elso szamot: " n1
read -p "Irja be a masodik szamot: " n2
echo "A szamok osszege: $((n1 + n2)) "
echo "A szamok kulonbsege: $((n1 - n2)) "
echo "A szamok szorzata: $((n1 * n2)) "
echo "A szamok hanyadosa: $((n1 / n2)) "
echo "A szamok osztasi maradeka: $((n1 % n2)) "
