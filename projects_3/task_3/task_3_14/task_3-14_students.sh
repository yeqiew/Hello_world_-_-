#!/bin/bash

# Простой скрипт для обработки students.txt
# Выполняет три задачи из задания

echo "=== ЗАДАНИЕ 1: РАБОТА С STUDENTS.TXT ==="
echo ""

# 1. Только имена студентов
echo "1) Имена студентов:"
awk '{print $1}' students.txt
echo ""

# 2. Только оценки студентов
echo "2) Оценки студентов:"
awk '{print $2}' students.txt
echo ""

# 3. Номер строки и имя
echo "3) Номер строки и имя:"
awk '{print NR, $1}' students.txt
echo ""
