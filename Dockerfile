# Используем образ Ubuntu 22.04

FROM ubuntu:22.04

# Работаем от имени root
USER root

# Обновляем список пакетов и устанавливаем необходимые зависимости
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Копируем исходный код приложения в /app внутри контейнера
COPY . /app

# Устанавливаем зависимости Python
#RUN pip3 install --no-cache-dir -r requirements.txt

# Задаем рабочую директорию
WORKDIR /root

# Команда для запуска приложения
#CMD ["python3", "app.py"]
