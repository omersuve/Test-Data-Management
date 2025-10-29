#!/bin/bash
# Benerator Demo 4: Statistical Distributions

echo "========================================="
echo "BENERATOR: Statistical Distributions"
echo "========================================="
echo ""

cd "$(dirname "$0")/../benerator/distributions"

echo "Generating 200 customers with realistic distributions..."
benerator realistic-patterns.ben.xml
echo ""
echo "Sample data (first 10 rows):"
head -11 ../output/realistic-customers.csv

echo ""
echo "[RESULT] Statistical intelligence: Gaussian, Exponential, Weighted distributions"
