# Use official PHP image with Apache
FROM php:8.1-apache

# Copy all project files to the web root
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html

# Give proper permissions
RUN chmod -R 755 /var/www/html && chown -R www-data:www-data /var/www/html

# Expose port 80
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]

