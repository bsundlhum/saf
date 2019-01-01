FROM php:7
RUN apt-get update -y && apt-get install -y openssl zip unzip git
WORKDIR /app
COPY . /app
CMD php artisan serve --host=0.0.0.0 --port=8181
EXPOSE 8181