# Cluster Ready Drupal

Here is where we want to get to?

### Fat vs Thin

*Should Nginx and PHP be in the same containers?*

Yes: You are running a hosting company or want to separate items for greater scale.
No: You are a company not looking to extend outside, save complexity.

1. git submodule update --init --recursive
2. cd /app docker run -it -v $(pwd):/app willhallonline/composer:alpine composer install
3. docker run -it -v $(pwd):/app willhallonline/drupal-drush-multi drush si