FROM webdevops/php-nginx:alpine-php7

RUN apk add --no-cache \
    mysql-client

WORKDIR /app

COPY --from=willhallonline/drupal-drush-multi:latest /usr/lib/drush /usr/lib/drush
COPY --from=willhallonline/drupal-drush-multi:latest /usr/lib/drush8 /usr/lib/
COPY --from=willhallonline/composer:alpine /usr/bin/composer /usr/bin/composer
RUN  ln -s /usr/lib/drush/vendor/bin/drush /usr/local/bin/drush && ln -s /usr/lib/drush8/vendor/bin/drush /usr/local/bin/drush8

COPY ../app /app
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
