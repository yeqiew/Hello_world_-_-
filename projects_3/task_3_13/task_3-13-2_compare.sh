#!/bin/bash

# Скрипт для сравнения форматов до и после замены

echo "=== СРАВНЕНИЕ ФОРМАТОВ ФАЙЛА SEQUENCES.TXT ==="
echo ""

# Проверяем наличие файлов
if [ ! -f "sequences.txt" ] || [ ! -f "sequences.txt.bak" ]; then
    echo "❌ Ошибка: файлы sequences.txt или sequences.txt.bak не найдены!"
    exit 1
fi

echo "📋 ФОРМАТ ДО ЗАМЕНЫ (с пробелами):"
echo "----------------------------------------"
cat sequences.txt.bak
echo ""
echo "Невидимые символы (пробелы как обычные пробелы):"
cat -A sequences.txt.bak
echo ""

echo "📋 ФОРМАТ ПОСЛЕ ЗАМЕНЫ (с табуляцией):"
echo "----------------------------------------"
cat sequences.txt
echo ""
echo "Невидимые символы (^I = табуляция):"
cat -A sequences.txt
echo ""

echo "✅ Сравнение завершено"
