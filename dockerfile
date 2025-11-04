# PHP + Apache base image
FROM php:8.2-apache

# Copy project files
COPY . /var/www/html/

# Give permissions
RUN chown -R www-data:www-data /var/www/html

# Expose port 80
EXPOSE 80

