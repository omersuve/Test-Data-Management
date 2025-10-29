#!/bin/bash
# DataMimic Demo 2: Age-Appropriate Conditions (Domain Intelligence)

echo "========================================="
echo "DATAMIMIC: Age-Appropriate Conditions"
echo "========================================="
echo "Domain Intelligence Example"
echo "========================================="
echo ""

cd "$(dirname "$0")/../datamimic"
source venv/bin/activate

cd healthcare

python constrained-demographics.py

echo ""
echo "[RESULT] Age-appropriate medical conditions based on domain knowledge"
echo "[NOTE] DataMimic uses domain intelligence to generate realistic correlations"

