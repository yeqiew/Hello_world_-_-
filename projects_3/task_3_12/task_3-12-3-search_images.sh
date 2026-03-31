#!/bin/bash

# Скрипт для поиска файлов изображений в files_list.txt

echo "=== ПОИСК ИЗОБРАЖЕНИЙ В ФАЙЛЕ files_list.txt ==="
echo ""

# Проверяем, существует ли файл
if [ ! -f "files_list.txt" ]; then
    echo "❌ Ошибка: файл files_list.txt не найден!"
    echo "Сначала создайте его командой:"
    echo '  echo "vacation_photo.jpg" > files_list.txt'
    echo '  echo "report_2025.pdf" >> files_list.txt'
    echo '  ... и так далее'
    exit 1
fi

echo "📄 Содержимое файла files_list.txt:"
echo "----------------------------------------"
cat files_list.txt
echo "----------------------------------------"
echo ""

echo "🔍 Ищем изображения (jpg, png, gif):"
echo "========================================"
grep -E "\.(jpg|png|gif)$" files_list.txt
echo "========================================"
echo ""

echo "📊 Статистика:"
echo "  Всего строк в файле: $(wc -l < files_list.txt)"
echo "  Найдено изображений: $(grep -c -E "\.(jpg|png|gif)$" files_list.txt)"
echo ""

echo "✅ Поиск завершен"
