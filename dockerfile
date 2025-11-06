FROM php:8.1-apache

# Copy application files to container
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html

# Set proper permissions
RUN chmod -R 755 /var/www/html

# Expose Apache port
EXPOSE 80
