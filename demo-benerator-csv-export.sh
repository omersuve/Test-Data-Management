#!/bin/bash
# Benerator Demo 1: CSV Export

echo "========================================="
echo "BENERATOR: CSV Export"
echo "========================================="
echo ""

cd "$(dirname "$0")/benerator/quickstart"

echo "Generating 10 people to CSV..."
rm -f output/simple-people.csv
benerator simple-csv-export.ben.xml
echo ""
echo "Generated CSV file:"
cat output/simple-people.csv

echo ""
echo "[RESULT] XML-based data generation exported to CSV"

