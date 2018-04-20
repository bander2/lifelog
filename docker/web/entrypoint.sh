#!/usr/bin/env bash

chown -R www-data:www-data /var/www/drupal/sites/default/files

drush cim -n -q -y --root=/var/www/drupal/web
drush updb -n -q -y --root=/var/www/drupal/web
drush cr -n -q -y --root=/var/www/drupal/web

exec "$@"
