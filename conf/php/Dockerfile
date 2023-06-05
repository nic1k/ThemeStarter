FROM php:8.0.17-fpm-alpine

RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli

# Install XDebug
#RUN pecl config-set php_ini /etc/php7/php.ini
#RUN pecl install xdebug
#RUN echo 'zend_extension=/usr/lib/php7/modules/xdebug.so' >> /etc/php7/php.ini
#RUN touch /etc/php7/conf.d/xdebug.ini
#RUN echo 'xdebug.remote_enable = 1' >> /etc/php7/conf.d/xdebug.ini
#RUN echo 'xdebug.remote_autostart = 1' >> /etc/php7/conf.d/xdebug.ini
#RUN echo 'xdebug.remote_connect_back = 1' >> /etc/php7/conf.d/xdebug.ini
#RUN echo 'xdebug.remote_handler = dbgp' >> /etc/php7/conf.d/xdebug.ini
#RUN echo 'xdebug.profiler_enable = 1' >> /etc/php7/conf.d/xdebug.ini
#RUN echo 'xdebug.profiler_output_dir = "/data/web"' >> /etc/php7/conf.d/xdebug.ini
#RUN echo 'xdebug.remote_port = 9000' >> /etc/php7/conf.d/xdebug.ini

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN php ./wp-cli.phar --info
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp



RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer config -g repo.packagist composer https://packagist.org
RUN composer config -g github-protocols https ssh


WORKDIR /var/www/html


#RUN chown -R www-data:www-data /var/www/
#RUN chmod -R 777 /var/www

# Composer install bedrock root
#RUN composer create-project install

# Multisite
#RUN composer require roots/multisite-url-fixer

# Acorn install
#RUN composer require roots/acorn

# Sage install
# composer create-project roots/sage your-theme-name
# yarn
# bud.config.js
# yarn build