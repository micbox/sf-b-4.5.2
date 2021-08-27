FROM php:7-apache

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY apache2-run /usr/local/bin
RUN a2enmod rewrite

# Copy application source
COPY src /var/www/
RUN chown -R www-data:www-data /var/www

CMD ["/usr/local/bin/apache2-run"]