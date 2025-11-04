# Dockerfile for PHP + Apache
FROM php:8.2-apache

# Optional: install extensions you need (uncomment and edit)
# RUN docker-php-ext-install pdo pdo_mysql mysqli

# Copy project into Apache webroot
COPY . /var/www/html/

# Ensure permissions (optional)
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

CMD ["apache2-foreground"]

