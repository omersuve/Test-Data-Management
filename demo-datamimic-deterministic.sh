#!/bin/bash
# DataMimic Demo 1: Deterministic Patient Generation

echo "========================================="
echo "DATAMIMIC: Deterministic Patient Generation"
echo "========================================="
echo ""

cd "$(dirname "$0")/datamimic"
source venv/bin/activate

cd quickstart

echo "Running first time..."
python with-seed.py

echo ""
echo "========================================="
echo "Running second time with SAME SEED..."
echo "========================================="
python with-seed.py

echo ""
echo "[RESULT] Same seed = Same patients = Reproducible testing!"

