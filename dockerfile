FROM php:8.1-apache

# Copy all files into Apache web root
COPY . /var/www/html

# Set working directory
WORKDIR /var/www/html

# Set correct ownership and permissions
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html

# Enable Apache modules needed for PHP
RUN a2enmod rewrite

# Ensure Apache runs in foreground
CMD ["apache2-foreground"]

EXPOSE 80
