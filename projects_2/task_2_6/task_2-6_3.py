# Упрощенная версия с использованием правил совместимости

# Принимаем группы крови от пользователя
donor = input("Введите группу крови донора (I, II, III, IV): ").strip().upper()
recipient = input("Введите группу крови реципиента (I, II, III, IV): ").strip().upper()

# Словарь для преобразования
convert = {"I": "O", "II": "A", "III": "B", "IV": "AB"}
donor_conv = convert.get(donor, donor)
recipient_conv = convert.get(recipient, recipient)

print(f"\nДонор: {donor} ({donor_conv})")
print(f"Реципиент: {recipient} ({recipient_conv})")

# Правила совместимости:
# O (I) - универсальный донор (может давать всем)
# O (I) может получать только от O
# A (II) может давать A и AB, получать от O и A
# B (III) может давать B и AB, получать от O и B
# AB (IV) - универсальный реципиент (может получать от всех), но давать только AB

if donor_conv == "O":  # I группа - универсальный донор
    print("✅ Переливание ВОЗМОЖНО (I группа - универсальный донор)")
elif donor_conv == recipient_conv:  # Одинаковые группы
    print("✅ Переливание ВОЗМОЖНО (совпадение групп)")
elif donor_conv == "A" and recipient_conv == "AB":  # II -> IV
    print("✅ Переливание ВОЗМОЖНО (II группа может давать IV)")
elif donor_conv == "B" and recipient_conv == "AB":  # III -> IV
    print("✅ Переливание ВОЗМОЖНО (III группа может давать IV)")
else:
    print("❌ Переливание НЕВОЗМОЖНО")