# Usa una imagen base de PHP con Apache
FROM php:8.2-apache

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /var/www/html

# Copia todos los archivos de tu aplicación al contenedor
COPY . .

# Habilita los módulos de Apache necesarios
RUN a2enmod rewrite \
    && a2enmod headers

# Instala extensiones de PHP necesarias
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Exponer el puerto 80 del contenedor
EXPOSE 80