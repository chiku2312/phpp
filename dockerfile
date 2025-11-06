# Base image: PHP 8.1 with Apache
FROM php:8.1-apache

# Copy all project files to web root
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html

# Give proper permissions to Apache
RUN chmod -R 755 /var/www/html && chown -R www-data:www-data /var/www/html

# Enable PHP extensions if needed
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Expose port 80
EXPOSE 80

# Start Apache in foreground
CMD ["apache2-foreground"]


