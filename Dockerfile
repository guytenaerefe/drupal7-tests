# from https://www.drupal.org/requirements/php#drupalversions
FROM php:5.6-apache

RUN a2enmod rewrite

# install the PHP extensions we need
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev wget curl vim less mysql-client-5.5 \
	&& rm -rf /var/lib/apt/lists/* \
	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
	&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql zip

WORKDIR /var/www/html
RUN wget http://files.drush.org/drush.phar #-O ~/drush.phar 
RUN chmod +x drush.phar && mv drush.phar /usr/local/bin/drush

# https://www.drupal.org/node/3060/release
ENV DRUPAL_VERSION 7.43
ENV DRUPAL_MD5 c6fb49bc88a6408a985afddac76b9f8b
