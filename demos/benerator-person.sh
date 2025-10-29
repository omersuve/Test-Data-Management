#!/bin/bash
# Benerator Demo 1: Person CSV Export

echo "========================================="
echo "BENERATOR: Person CSV Export"
echo "========================================="
echo ""

cd "$(dirname "$0")/../benerator/quickstart"

echo "Generating 10 people to CSV..."
benerator simple-csv-person.ben.xml 2>/dev/null
echo ""
echo "Generated CSV file:"
cat ../output/simple-people.csv

echo ""
echo "[RESULT] Person data with names, emails, and ages."
echo ""
