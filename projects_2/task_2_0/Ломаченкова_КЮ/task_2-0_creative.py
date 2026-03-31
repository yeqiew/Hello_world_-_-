# Приветствие с использованием sep и end
print("=" * 40, end="\n\n")
print("✨", "ДОБРО", "ПОЖАЛОВАТЬ", "✨", sep="  ", end="!\n\n")
print("-" * 40, end="\n\n")

# Информация о пользователе с использованием sep
print("👤", "Студент:", "Иван", "Иванов", sep="\t")
print("📚", "Курс:", "1", sep="\t")
print("🎓", "Год поступления:", "2026", sep="\t", end="\n\n")

# Текущий год обучения с расчетом
year_of_entry = 2026
current_year = 2026
course = current_year - year_of_entry + 1

print("📅", f"Текущий год обучения: {course} курс", end="\n\n")
