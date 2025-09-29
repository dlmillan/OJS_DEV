FROM pkpofficial/ojs

# Activo mod_rewrite en Apache
RUN a2enmod rewrite

# Copio la config del sitio (para permitir .htaccess)
COPY ojs.conf /etc/apache2/sites-available/000-default.conf

# Copio las reglas para forzar HTTPS (evita Mixed Content)
COPY .htaccess /var/www/html/.htaccess
    
