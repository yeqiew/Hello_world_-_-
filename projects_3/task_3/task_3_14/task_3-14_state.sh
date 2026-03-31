#!/bin/bash

# Упрощенная версия скрипта (только 3 задания)

echo "=== СТАТИСТИКА ОЦЕНОК (УПРОЩЕННАЯ) ==="
echo ""

if [ ! -f "students.txt" ]; then
    echo "❌ Файл students.txt не найден!"
    exit 1
fi

echo "Исходные данные:"
cat students.txt
echo ""

# 1. Сумма всех оценок
SUM=$(awk '{sum += $2} END {print sum}' students.txt)
echo "1) Сумма всех оценок: $SUM"

# 2. Средняя оценка
AVG=$(awk '{sum += $2; count++} END {printf "%.2f", sum/count}' students.txt)
echo "2) Средняя оценка: $AVG"

# 3. Максимальная оценка
MAX=$(awk 'NR==1{max=$2} $2>max{max=$2} END{print max}' students.txt)
echo "3) Максимальная оценка: $MAX"

echo ""
