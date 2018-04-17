FROM banderson/drupal

MAINTAINER bander2.imda@gmail.com

COPY drupal /var/www/drupal
COPY docker/web/config/lifelog.aliases.drushrc.php /root/.drush/

RUN composer install -d /var/www/drupal
COPY docker/web/entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
