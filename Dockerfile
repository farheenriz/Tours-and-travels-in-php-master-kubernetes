FROM php:5.6-apache

WORKDIR /var/www/html

# Copy application files
COPY . /var/www/html

# Install PDO MySQL extension
RUN docker-php-ext-install pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Apache configuration
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Set permissions
RUN chown -R www-data:www-data /var/www/html

EXPOSE 8081

CMD ["apache2-foreground"]