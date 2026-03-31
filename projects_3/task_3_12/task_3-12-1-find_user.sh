#!/bin/bash

# Скрипт для поиска текущего пользователя в файле /etc/passwd

echo "=== ПОИСК ПОЛЬЗОВАТЕЛЯ В /ETC/PASSWD ==="
echo ""
# Выводим информацию о текущем пользователе
echo "👤 Текущий пользователь: $USER"
echo "🆔 UID: $UID"
echo "🏠 Домашняя директория: $HOME"
echo ""
# Ищем пользователя в /etc/passwd
echo "🔍 Ищем строку для пользователя $USER в /etc/passwd..."
echo ""
# Выполняем поиск
RESULT=$(grep "^$USER:" /etc/passwd 2>/dev/null)

# Проверяем, найден ли пользователь
if [ -n "$RESULT" ]; then
    echo "✅ Пользователь найден!"
    echo "----------------------------------------"
    echo "$RESULT"
    echo "----------------------------------------"
else
    echo "❌ Пользователь $USER не найден в /etc/passwd"
fi

# Разбираем строку passwd на компоненты (если пользователь найден)
if [ -n "$RESULT" ]; then
    echo ""
    echo "📋 РАЗБОР СТРОКИ PASSWD:"
    # Разделяем строку по двоеточиям
    IFS=":" read -r username password uid gid description home shell <<< "$RESULT"
    echo "   Имя пользователя: $username"
    echo "   Пароль (x - в /etc/shadow): $password"
    echo "   UID: $uid"
    echo "   GID: $gid"
    echo "   Описание: $description"
    echo "   Домашняя папка: $home"
    echo "   Оболочка: $shell"
fi

echo ""
echo "✅ Поиск завершен"
