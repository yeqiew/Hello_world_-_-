#!/bin/bash

# Скрипт для создания и удаления файлов в обратном порядке

echo "=== СОЗДАНИЕ И УДАЛЕНИЕ ФАЙЛОВ ==="
echo ""
# ЧАСТЬ 1: СОЗДАНИЕ ФАЙЛОВ (цикл for)
echo "🔨 Создаю файлы от test1.txt до test10.txt..."
for i in {1..10}; do
    FILENAME="test${i}.txt"
    echo "Файл номер $i" > "$FILENAME"
    echo "  ✅ Создан: $FILENAME"
done

# Проверяем, что файлы создались
echo ""
echo "📋 Список созданных файлов:"
ls -la test*.txt 2>/dev/null || echo "Файлы не найдены"

# ЧАСТЬ 2: УДАЛЕНИЕ ФАЙЛОВ В ОБРАТНОМ ПОРЯДКЕ (цикл while)
echo ""
echo "🗑️ Удаляю файлы в обратном порядке (от 10 до 1)..."

COUNTER=10
while [ $COUNTER -ge 1 ]; do
    FILENAME="test${COUNTER}.txt"
    if [ -f "$FILENAME" ]; then
        rm "$FILENAME"
        echo "  🗑️ Удален: $FILENAME"
    else
        echo "  ⚠️ Файл $FILENAME не найден"
    fi
    COUNTER=$((COUNTER - 1))
done

# Финальная проверка
echo ""
echo "📋 Проверка после удаления:"
ls -la test*.txt 2>/dev/null || echo "✅ Все файлы удалены, файлы test*.txt не найдены"

echo ""
echo "✅ Скрипт завершен"
echo "================================"
