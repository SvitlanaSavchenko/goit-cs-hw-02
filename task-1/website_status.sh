#!/bin/bash

# Масив URL вебсайтів для перевірки
websites=("https://google.com" "https://facebook.com" "https://x.com/" "https://www.netflix.cm/")

# Ім'я файлу логів
log_file="website_status.log"

# Очищення попереднього файлу логів, якщо він існує
> "$log_file"

# Визначення кольорів для термінала
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Цикл для перевірки кожного сайту в масиві
for site in "${websites[@]}"; do
    # Використовуємо curl для надсилання запиту з підтримкою переадресації (-L)
    response_code=$(curl -o /dev/null -s -w "%{http_code}" -L "$site")

    # Перевіряємо статус-код відповіді
    if [ "$response_code" -eq 200 ]; then
        # Відображення результату з кольором у терміналі та запис у лог без кольору
        echo -e "${GREEN}$site is UP${NC}"
        echo "$site is UP" >> "$log_file"
    else
        # Відображення результату з кольором у терміналі та запис у лог без кольору
        echo -e "${RED}$site is DOWN${NC}"
        echo "$site is DOWN" >> "$log_file"
    fi
done

# Виведення повідомлення про успішне завершення
echo "Результати записано у файл логів: $log_file"
