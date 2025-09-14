# Используем официальный образ postgres из Docker Hub
FROM postgres:latest

# Устанавливаем переменные окружения для автоматической настройки БД
# Пароль для суперпользователя postgres
ENV POSTGRES_PASSWORD=dbpass 
# Имя пользователя БД (будет создан с правами суперпользователя)
ENV POSTGRES_USER=dbuser     
# Название базы данных, которая будет создана при первом запуске
ENV POSTGRES_DB=dbname       

# Копируем SQL-скрипт инициализации в специальную директорию внутри контейнера.
# Скрипты в /docker-entrypoint-initdb.d/ выполняются автоматически при первом запуске контейнера.
COPY init_scripts/init.sql /docker-entrypoint-initdb.d/init.sql
# Монтирует хост-папку /d_data в контейнер для сохранения данных БД
VOLUME /d_data:/var/lib/postgresql/data
