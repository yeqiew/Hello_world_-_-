#!/bin/bash

# Скрипт для замены пути к базе данных в settings.php
# Заменяем '/var/lib/mysql/data' на '/mnt/ssd/mysql'
# Используем разделитель | для читаемости (чтобы не экранировать слэши)

echo "=== ЗАМЕНА ПУТИ К БАЗЕ ДАННЫХ В SETTINGS.PHP ==="
echo ""

# Проверяем, существует ли файл
if [ ! -f "settings.php" ]; then
    echo "❌ Ошибка: файл settings.php не найден!"
    exit 1
fi

# Показываем исходное содержимое
echo "📄 Исходное содержимое settings.php:"
echo "----------------------------------------"
grep -A 2 "db_data_path" settings.php
echo "----------------------------------------"
echo ""

# Выполняем замену с разделителем |
echo "🔍 Выполняем замену: '/var/lib/mysql/data' → '/mnt/ssd/mysql'"
echo "   Команда: sed -i 's|/var/lib/mysql/data|/mnt/ssd/mysql|' settings.php"
echo ""

# Делаем резервную копию
cp settings.php settings.php.bak
echo "✅ Создана резервная копия: settings.php.bak"

# Выполняем замену
sed -i 's|/var/lib/mysql/data|/mnt/ssd/mysql|' settings.php

# Показываем результат
echo ""
echo "📄 Новое содержимое settings.php:"
echo "----------------------------------------"
grep -A 2 "db_data_path" settings.php
echo "----------------------------------------"
echo ""

echo "✅ Замена успешно выполнена!"
echo "   Для восстановления используйте: cp settings.php.bak settings.php"
