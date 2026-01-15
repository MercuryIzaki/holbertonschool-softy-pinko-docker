# Используем последнюю версию Ubuntu
FROM ubuntu:latest

# Обновляем систему
RUN apt-get update && apt-get upgrade -y

# Устанавливаем python3 и pip3
RUN apt-get install -y python3 python3-pip

# Исправляем ошибку "externally managed environment", если она возникнет
RUN rm /usr/lib/python*/EXTERNALLY-MANAGED

# Устанавливаем Flask через pip3
RUN pip3 install flask

# Устанавливаем рабочую директорию /app
WORKDIR /app

# Копируем наш скрипт api.py в образ
COPY api.py /app/api.py

# Запускаем Flask сервер при старте контейнера
CMD ["python3", "api.py"]
