# Программа для анализа последовательности ДНК

print("=== Анализ последовательности ДНК ===\n")

# Принимаем на вход пользовательскую строку
dna_sequence = input("Введите последовательность ДНК: ")

# Преобразуем в верхний регистр для единообразия
dna_upper = dna_sequence.upper()

print(f"\nПоследовательность в верхнем регистре: {dna_upper}\n")

# Подсчет количества каждого нуклеотида
count_A = dna_upper.count('A')
count_T = dna_upper.count('T')
count_G = dna_upper.count('G')
count_C = dna_upper.count('C')

# Общая длина последовательности
total_length = len(dna_upper)

# Вывод подсчета нуклеотидов
print("Подсчёт нуклеотидов:")
print(f"A: {count_A}")
print(f"T: {count_T}")
print(f"G: {count_G}")
print(f"C: {count_C}\n")

# Вывод общей длины
print(f"Общая длина: {total_length} нуклеотидов")