#!/bin/bash
# DataMimic Demo 1: Basic Patient Generation

echo "========================================="
echo "DATAMIMIC: Basic Patient Generation"
echo "========================================="
echo ""

cd "$(dirname "$0")/datamimic"
source venv/bin/activate

cd quickstart

python basic-patient.py

echo ""
echo "[RESULT] Python-based domain-specific data generation"

