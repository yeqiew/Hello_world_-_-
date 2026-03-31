# task_2-2_inventory_control.py
# Программа для учета поступления реактивов на склад

from datetime import datetime

# Запрос данных у пользователя
reagent_name = input("Введите название нового реактива: ")
reagent_quantity = int(input("Введите количество реактива (целое число): "))

# Получение текущей даты
current_date = datetime.now().strftime("%d.%m.%Y")

# Вывод отчета с использованием f-строки
print(f"\n✅ Реактив {reagent_name} поступил на склад в количестве {reagent_quantity} шт.")
print(f"📅 Дата поступления: {current_date}")
print("💰 Статус: ожидает подтверждения")