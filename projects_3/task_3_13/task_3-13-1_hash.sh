#!/bin/bash

# Скрипт с использованием разделителя # (решетка)
echo "=== ЗАМЕНА С РАЗДЕЛИТЕЛЕМ # ==="
echo ""
echo "Команда: sed -i 's#/var/lib/mysql/data#/mnt/ssd/mysql#' settings.php"
echo ""
sed -n '/db_data_path/p' settings.php
