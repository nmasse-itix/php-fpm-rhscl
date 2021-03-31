#!/bin/sh

# Listen on port 9000
echo "Opening port 9000..."
sed -i 's/^listen *= *.*/listen = 0.0.0.0:9000/' /etc/php-fpm.d/www.conf
sed -i 's/^listen.allowed_clients *= *.*/listen.allowed_clients = /' /etc/php-fpm.d/www.conf

# Start PHP-FPM
exec /usr/sbin/php-fpm --nodaemonize -d error_log=/dev/fd/2 -d log_level=debug

