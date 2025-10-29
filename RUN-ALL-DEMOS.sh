#!/bin/bash
# Master Demo Script - Run all demos in sequence

echo "╔════════════════════════════════════════════════════════════╗"
echo "║                                                            ║"
echo "║       TEST DATA MANAGEMENT - COMPLETE DEMO                 ║"
echo "║       Benerator vs DataMimic                               ║"
echo "║                                                            ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""
echo "This will run all 6 demos in sequence."
echo "Press ENTER after each demo to continue..."
echo ""

cd "$(dirname "$0")"

# PART 1: BENERATOR
echo ""
echo "═══════════════════════════════════════════════════════════"
echo "                    PART 1: BENERATOR"
echo "═══════════════════════════════════════════════════════════"
echo ""
read -p "Press ENTER to start..."

echo ""
./demo-benerator-csv-export.sh
echo ""
read -p "Press ENTER for next demo..."

echo ""
./demo-benerator-distributions.sh
echo ""
read -p "Press ENTER for next demo..."

echo ""
./demo-benerator-anonymization.sh
echo ""
read -p "Press ENTER for next demo..."

echo ""
./demo-benerator-ecommerce.sh
echo ""
read -p "Press ENTER for next demo..."

# PART 2: DATAMIMIC
echo ""
echo "═══════════════════════════════════════════════════════════"
echo "                    PART 2: DATAMIMIC"
echo "═══════════════════════════════════════════════════════════"
echo ""
read -p "Press ENTER to continue..."

echo ""
./demo-datamimic-basic-patient.sh
echo ""
read -p "Press ENTER for next demo..."

echo ""
./demo-datamimic-deterministic.sh
echo ""
read -p "Press ENTER for next demo..."

echo ""
./demo-datamimic-age-appropriate.sh
echo ""
read -p "Press ENTER for next demo..."

echo ""
./demo-datamimic-hospital.sh
echo ""

echo ""
echo "╔════════════════════════════════════════════════════════════╗"
echo "║                                                            ║"
echo "║                  ALL DEMOS COMPLETE                        ║"
echo "║                                                            ║"
echo "╚════════════════════════════════════════════════════════════╝"

