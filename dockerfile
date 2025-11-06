# Use official PHP Apache image
FROM php:8.1-apache

# Copy current directory contents into Apache's web root
COPY . /var/www/html

# Set working directory
WORKDIR /var/www/html

# Set correct ownership & permissions
RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

# Enable PHP modules (optional but good)
RUN docker-php-ext-install mysqli && a2enmod rewrite

# Set Apache to start in foreground
CMD ["apache2-foreground"]

EXPOSE 80

