#!/bin/bash
# Benerator Demo 2: Data Anonymization (GDPR)

echo "========================================="
echo "BENERATOR: Data Anonymization (GDPR)"
echo "========================================="
echo ""

cd "$(dirname "$0")/benerator/anonymization"

echo "ORIGINAL DATA (Production):"
echo "----------------------------"
cat ../data/sample-customers.csv
echo ""
echo ""

echo "Running anonymization..."
benerator masking-demo.ben.xml
echo ""

echo "MASKED DATA (Test-ready):"
echo "-------------------------"
cat output/customers-masked.csv

echo ""
echo "[RESULT] Production → Test data safely! GDPR compliant."

