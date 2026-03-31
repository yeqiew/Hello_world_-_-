#!/bin/bash

# Скрипт для подсчета нуклеотидов в FASTA-файлах

echo "=== ПОДСЧЕТ НУКЛЕОТИДОВ В FASTA-ФАЙЛАХ ==="
echo ""
# Проверяем, есть ли fasta-файлы
FASTA_FILES=$(ls *.fasta 2>/dev/null)
if [ -z "$FASTA_FILES" ]; then
    echo "❌ В текущей папке нет файлов с расширением .fasta"
    exit 1
fi

# Выводим заголовок таблицы
printf "%-15s %8s %8s %8s %8s %8s\n" "Файл" "A" "T" "G" "C" "Всего"
printf "%-15s %8s %8s %8s %8s %8s\n" "---------------" "--------" "--------" "--------" "--------" "--------"

# Перебираем все fasta-файлы
for FILE in *.fasta; do
    # Проверяем, что файл существует (на случай если нет файлов)
    [ -f "$FILE" ] || continue

    # Проверяем, не пустой ли файл
    if [ ! -s "$FILE" ]; then
        printf "%-15s %8s %8s %8s %8s %8s\n" "$FILE" "пустой" "пустой" "пустой" "пустой" "0"
        continue
    fi

    # Подсчет нуклеотидов (игнорируем регистр и все кроме A,T,G,C)
    # Используем grep -o для извлечения каждого символа и wc -l для подсчета

    # Сначала извлекаем все символы, игнорируя строки с ">" (заголовки)
    # И переводим всё в верхний регистр для единообразия
    SEQUENCE=$(grep -v "^>" "$FILE" | tr -d "\n\r" | tr "atgc" "ATGC")

    # Подсчет каждого нуклеотида
    A_COUNT=$(echo "$SEQUENCE" | grep -o "A" | wc -l)
    T_COUNT=$(echo "$SEQUENCE" | grep -o "T" | wc -l)
    G_COUNT=$(echo "$SEQUENCE" | grep -o "G" | wc -l)
    C_COUNT=$(echo "$SEQUENCE" | grep -o "C" | wc -l)

    # Общее количество нуклеотидов
    TOTAL=$((A_COUNT + T_COUNT + G_COUNT + C_COUNT))

    # Выводим результаты
    printf "%-15s %8d %8d %8d %8d %8d\n" "$FILE" "$A_COUNT" "$T_COUNT" "$G_COUNT" "$C_COUNT" "$TOTAL"

done

echo ""
echo "✅ Подсчет завершен"
