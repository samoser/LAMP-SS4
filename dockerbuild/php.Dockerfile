FROM php:7.4-apache
RUN docker-php-ext-install mysqli pdo pdo_mysql

COPY docker-php-entrypoint /usr/local/bin/docker-php-entrypoint
RUN chmod 755 /usr/local/bin/docker-php-entrypoint

RUN a2enmod rewrite
RUN chown www-data:root /var/www
RUN usermod -s /bin/bash www-data
RUN apt-get update; apt-get install -y vim zip wget \
    libicu-dev \
    && docker-php-ext-configure intl \
    && docker-php-ext-install intl \
    && docker-php-ext-enable intl; \
    wget -cO - https://getcomposer.org/composer-stable.phar > /usr/local/bin/composer; \
    chmod 755 /usr/local/bin/composer; 