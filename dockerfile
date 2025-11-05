FROM php:8.1-apache

# Copy all project files into Apache's web root
COPY . /var/www/html

# Set working directory
WORKDIR /var/www/html

# Fix permissions (important for AWS EB)
RUN chmod -R 755 /var/www/html

# Expose HTTP port
EXPOSE 80

