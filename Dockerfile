FROM pkpofficial/ojs:3_3_0-19


# vhost + htaccess + php ini
COPY ojs.conf /etc/apache2/sites-available/000-default.conf
COPY .htaccess /var/www/html/.htaccess
COPY php-session.ini /usr/local/etc/php/conf.d/zzz-custom.ini
