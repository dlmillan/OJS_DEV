FROM pkpofficial/ojs:3_3_0-19
RUN a2enmod rewrite
COPY ojs.conf /etc/apache2/sites-available/000-default.conf
COPY .htaccess /var/www/html/.htaccess
