# Программа для расчета фасовки капсул

# Запрос данных у пользователя
total_capsules = int(input("Введите общее количество произведенных капсул: "))
pack_capacity = int(input("Введите количество капсул в одной упаковке: "))

# Расчет с использованием операторов // и %
full_packs = total_capsules // pack_capacity
remaining_capsules = total_capsules % pack_capacity

# Вывод отчета
print("\n--- Отчет фасовочного цеха ---")
print(f"Полных упаковок:\t{full_packs}")
print(f"Остаток капсул:\t\t{remaining_capsules}")