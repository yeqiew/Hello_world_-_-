#!/bin/bash

# Скрипт с использованием разделителя : (двоеточие)
echo "=== ЗАМЕНА С РАЗДЕЛИТЕЛЕМ : ==="
echo ""
echo "Команда: sed -i 's:/var/lib/mysql/data:/mnt/ssd/mysql:' settings.php"
echo ""
sed -n '/db_data_path/p' settings.php
