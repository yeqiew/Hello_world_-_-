#!/bin/bash

# Скрипт для поиска всех .conf файлов в директории /etc
# Поиск игнорирует регистр (находит .conf, .CONF, .Conf и т.д.)

echo "=== ПОИСК .CONF ФАЙЛОВ В ДИРЕКТОРИИ /etc ==="
echo ""
echo "🔍 Ищем все файлы с расширением .conf (без учета регистра)..."
echo ""
# Основная команда: ls -l /etc | grep -i ".conf"
ls -l /etc 2>/dev/null | grep -i "\.conf" > temp_results.txt

# Подсчитываем количество найденных файлов
COUNT=$(wc -l < temp_results.txt)

if [ $COUNT -eq 0 ]; then
    echo "❌ Файлы с расширением .conf не найдены"
else
    echo "✅ Найдено $COUNT файлов:"
    echo "----------------------------------------"
    cat temp_results.txt
    echo "----------------------------------------"
fi

# Удаляем временный файл
rm -f temp_results.txt

# Удаляем временный файл
rm -f temp_results.txt
