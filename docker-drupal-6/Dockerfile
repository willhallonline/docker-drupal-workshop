FROM webdevops/php-nginx:alpine-php7

RUN apk add --no-cache \
    mysql-client

WORKDIR /app

COPY --from=willhallonline/drupal-drush-multi:latest /usr/lib/drush /usr/lib/drush
COPY --from=willhallonline/drupal-drush-multi:latest /usr/lib/drush8 /usr/lib/
RUN  ln -s /usr/lib/drush/vendor/bin/drush /usr/local/bin/drush && ln -s /usr/lib/drush8/vendor/bin/drush /usr/local/bin/drush8

COPY ./app /app
RUN cp /app/sites/default/default.settings.php /app/sites/default/settings.php && chmod 777 /app/sites/default/settings.php \
    && mkdir /app/sites/default/files && chmod 777 /app/sites/default/files
COPY ./app.conf /etc/nginx/conf.d/default.conf
