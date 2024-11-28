## Технічний опис завдань

### Завдання 1

Напишіть скрипт, який автоматично перевіряє, чи доступні певні вебсайти. Скрипт повинен використовувати команду curl для надсилання HTTP GET запитів до кожного сайту у списку та перевірки відповіді.

#### Покрокова інструкція

1. Список вебсайтів. У вашому скрипті має бути визначений масив з URL вебсайтів, які потрібно перевірити. Наприклад, `https://google.com,` `https://facebook.com`, `https://twitter.com`.

2. Перевірка доступності. Скрипт має перевіряти кожен сайт зі списку за допомогою `curl`, переконуючись, що сайт відповідає з HTTP статус-кодом 200, що вказує на успішну доступність сайту.

3. Запис результатів у файл. Для кожного сайту результат перевірки (доступний чи недоступний) має бути записаний у файл логів. Назва файлу логів має бути визначена у скрипті.

4. Форматування виходу. Результати мають бути чітко сформульовані, наприклад: `"[<https://google.com>](https://google.com/) is UP"` або `"[<https://twitter.com>](https://twitter.com/) is DOWN"`.

5. Вивід інформації. Після виконання скрипту має бути виведено повідомлення, що результати записано у файл логів із його назвою.

#### Приклад виконання скрипту

Скрипт виконує команди та виводить результати у файл `website_status.log`. Записи у файлі логів будуть відображати статус кожного сайту (UP або DOWN) на момент запуску скрипту.

```bash
<https://google.com> is UP
<https://facebook.com> is UP
<https://twitter.com> is UP
```

#### Критерії прийняття

- Скрипт написано на Bash.
- Скрипт повинен опрацьовувати переадресацію.
- Використано цикл для обходу всіх сайтів у списку.
- Використано команду `curl` для перевірки HTTP-відповідей.
- Результати перевірки записані у файл логів, виведено про це повідомлення.
- Форматування коду чітке та акуратне.

### Завдання 2

Клонуйте FastAPI застосунок, налаштуйте і запустіть його в Docker контейнері. Перевірте правильність роботи застосунку та підключення до бази даних.

#### Покрокова інструкція

1. Використовуючи команду `git clone`, клонуйте репозиторій за адресою `https://github.com/GoIT-Python-Web/Computer-Systems-hw02`. Перейдіть у клонований каталог.

2. Створіть `Dockerfile` із вказівками для створення образу Docker застосунку.

3. Напишіть `docker-compose.yaml` з конфігурацією для застосунку та PostgreSQL.

4. Використайте Docker Compose для побудови середовища, команду `docker-compose up` для запуску середовища.

> [!NOTE]
>
> 💡 Підказка:
> Внесіть зміни в рядку підключення до бази даних SQLALCHEMY_DATABASE_URL: вона знаходиться у файлі \\conf\\db.py. Замість localhost вставте ім'я сервісу PostgreSQL з вашого файлу docker-compose.yaml .

```bash
SQLALCHEMY_DATABASE_URL = f"postgresql+psycopg2://postgres:567234@localhost:5432/hw02"
```

Коли ви використовуєте Docker Compose, кожен сервіс (контейнер) має власну мережу, і вони зазвичай не можуть звертатися один до одного за допомогою `localhost`. Замість цього, ви маєте використовувати назву сервісу в якості імені хоста.

5. Перевірте функціональність застосунку та доступність бази даних.

Якщо замість `"Welcome to FastAPI!”` ви бачите червоне віконце з повідомленням про помилку, значить ви неправильно налаштували `docker-compose.yaml`

#### Критерії прийняття

- Клоновано репозиторій, створено `Dockerfile` для створення образу `Docker`застосунку.

- Написано `docker-compose.yaml` з конфігурацією для застосунку та `PostgreSQL`.

- Використано `Docker Compose`, команду `docker-compose up` для побудови та запуску середовища.

- Застосунок є функціональним, а база даних — доступною, що підтверджується натисканням кнопки `Перевірити БД`.
