#!/bin/bash

echo "========================================"
echo "DataMimic Demo: Basic Doctor Generation"
echo "========================================"
echo ""

cd datamimic
source venv/bin/activate
python quickstart/basic-doctor.py
deactivate

