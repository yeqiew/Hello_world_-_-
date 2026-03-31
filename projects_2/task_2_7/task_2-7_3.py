seq = ["ATATACGCGTA", "CTTCGGNGGA"]

print("Анализ последовательностей:")
print("=" * 30)

for sequence in seq:
    print(f"\nПоследовательность целиком: {sequence}")
    print("Построчный вывод:")
    
    for letter in sequence:
        print(letter)
    
    print("-" * 20)

print("\nЦикл выполнен")