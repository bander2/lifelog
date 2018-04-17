#!/usr/bin/env bash

chown -R www-data:www-data /var/www/drupal/sites/default/files

exec "$@"
