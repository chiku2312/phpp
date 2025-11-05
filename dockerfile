# Step 1: Use PHP Apache image (instead of nginx base)
FROM php:8.2-apache

# Step 2: Copy code into Apache web root
COPY . /var/www/html/

# Step 3: Give permission
RUN chown -R www-data:www-data /var/www/html

# Step 4: Expose port
EXPOSE 80

# Step 5: Start Apache
CMD ["apache2-foreground"]

