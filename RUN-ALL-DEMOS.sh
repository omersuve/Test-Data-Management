#!/bin/bash
# Master Demo Script - Run all demos in sequence

echo "╔════════════════════════════════════════════════════════════╗"
echo "║                                                            ║"
echo "║       TEST DATA MANAGEMENT - COMPLETE DEMO                 ║"
echo "║       Benerator vs DataMimic                               ║"
echo "║                                                            ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""
echo "This will run all 12 demos in sequence."
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
./demos/benerator-person.sh
echo ""
read -p "Press ENTER for next demo..."

echo ""
./demos/benerator-product.sh
echo ""
read -p "Press ENTER for next demo..."

echo ""
./demos/benerator-company.sh
echo ""
read -p "Press ENTER for next demo..."

echo ""
./demos/benerator-distributions.sh
echo ""
read -p "Press ENTER for next demo..."

echo ""
./demos/benerator-anonymization.sh
echo ""
read -p "Press ENTER for next demo..."

echo ""
./demos/benerator-ecommerce.sh
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
./demos/datamimic-basic-patient.sh
echo ""
read -p "Press ENTER for next demo..."

echo ""
./demos/datamimic-account.sh
echo ""
read -p "Press ENTER for next demo..."

echo ""
./demos/datamimic-doctor.sh
echo ""
read -p "Press ENTER for next demo..."

echo ""
./demos/datamimic-deterministic.sh
echo ""
read -p "Press ENTER for next demo..."

echo ""
./demos/datamimic-age-appropriate.sh
echo ""
read -p "Press ENTER for next demo..."

echo ""
./demos/datamimic-hospital.sh
echo ""

echo ""
echo "╔════════════════════════════════════════════════════════════╗"
echo "║                                                            ║"
echo "║                  ALL DEMOS COMPLETE                        ║"
echo "║                                                            ║"
echo "╚════════════════════════════════════════════════════════════╝"

