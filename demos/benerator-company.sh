#!/bin/bash
# Benerator Demo 3: Company CSV Export

echo "========================================"
echo "Benerator Demo: Company CSV Export"
echo "========================================"
echo ""

cd "$(dirname "$0")/../benerator/quickstart"
benerator simple-csv-company.ben.xml 2>/dev/null

echo ""
echo "Output preview:"
head -5 ../output/simple-companies.csv
echo ""
