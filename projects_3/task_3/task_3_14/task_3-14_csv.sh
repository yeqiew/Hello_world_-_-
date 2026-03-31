#!/bin/bash

# Упрощенная версия скрипта для обработки CSV (только 3 задания)

echo "=== ОБРАБОТКА CSV-ФАЙЛА (УПРОЩЕННАЯ) ==="
echo ""

if [ ! -f "data.csv" ]; then
    echo "❌ Файл data.csv не найден!"
    exit 1
fi

echo "Исходные данные:"
cat data.csv
echo ""

# 1. Названия товаров
echo "1) Названия товаров:"
awk -F ',' '{print "   " $2}' data.csv
echo ""

# 2. Товары дороже 20
echo "2) Товары дороже 20:"
awk -F ',' '$3 > 20 {print "   " $2 " - " $3 " руб."}' data.csv
echo ""

# 3. Общая стоимость
TOTAL=$(awk -F ',' '{sum += $3} END {print sum}' data.csv)
echo "3) Общая стоимость: $TOTAL руб."
echo ""
