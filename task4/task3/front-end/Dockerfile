# Используем последнюю версию Nginx
FROM nginx:latest

# Копируем файлы фронтенда в указанную директорию
COPY ./softy-pinko-front-end /var/www/html/softy-pinko-front-end

# Копируем конфиг Nginx, заменяя стандартный
COPY ./softy-pinko-front-end.conf /etc/nginx/conf.d/default.conf
