#!/bin/bash
# Benerator Demo 6: Complete E-commerce System

echo "========================================="
echo "BENERATOR: Complete E-commerce System"
echo "========================================="
echo ""

cd "$(dirname "$0")/../benerator/ecommerce"

echo "Generating complete e-commerce dataset..."
benerator complete-shop.ben.xml
echo ""

echo "Generated files:"
echo "----------------"
ls -lh ../output/ecom-*.csv

echo ""
echo "Record counts:"
echo "--------------"
wc -l ../output/ecom-*.csv

echo ""
echo "[RESULT] Relational data: Products → Customers → Orders → Items"

