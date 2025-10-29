#!/bin/bash
# DataMimic Demo 2: Bank Account Generation

echo "========================================="
echo "DATAMIMIC: Bank Account Generation"
echo "========================================="
echo "Finance Domain Example - demonstrates multi-domain support."
echo ""

cd "$(dirname "$0")/../datamimic"
source venv/bin/activate

cd quickstart

echo "Generating a bank account..."
python basic-account.py
echo ""

echo "[RESULT] Finance domain data with realistic account details."
echo "[NOTE] DataMimic supports Healthcare, Finance, and more."
echo ""

