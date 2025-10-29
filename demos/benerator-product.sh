#!/bin/bash
# Benerator Demo 2: Product CSV Export

echo "========================================="
echo "BENERATOR: Product CSV Export"
echo "========================================="
echo ""

cd "$(dirname "$0")/../benerator/quickstart"

echo "Generating 10 products to CSV..."
benerator simple-csv-product.ben.xml 2>/dev/null
echo ""
echo "Generated CSV file:"
cat ../output/simple-products.csv

echo ""
echo "[RESULT] Product data with prices, ratings, and stock levels."
echo ""
