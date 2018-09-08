# AppServer Docker Compose
## Docker Drupal 4

Simple but practical for single node Drupal Docker.

Containers:

- Database
- Nginx
- PHP
- Memcached
- Solr

Some more things...

Certbot

```
docker run -it --rm -v $(pwd)/certs:/etc/letsencrypt -v $(pwd)/app:/app certbot/certbot certonly --webroot --webroot-path=/app -d example.com

```

Drush

```
docker exec php72 drush --root=/app
```

MySql

```
docker exec -it mysql mysql
```

Nginx

```
docker exec -it nginx service nginx reload
```