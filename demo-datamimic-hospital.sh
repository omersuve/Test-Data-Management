#!/bin/bash
# DataMimic Demo 3: Complete Hospital System

echo "========================================="
echo "DATAMIMIC: Complete Hospital System"
echo "========================================="
echo ""

cd "$(dirname "$0")/datamimic"
source venv/bin/activate

cd healthcare

python complete-hospital.py

echo ""
echo "Sample patient data:"
echo "--------------------"
head -3 ../examples-output/hospital-patients.csv

echo ""
echo "Sample appointments:"
echo "--------------------"
head -3 ../examples-output/hospital-appointments.csv

echo ""
echo "[RESULT] Relational data: Doctors → Patients → Appointments (with domain logic)"

