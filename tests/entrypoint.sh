#!/bin/sh
composer install --no-interaction --prefer-dist --optimize-autoloader
php artisan storage:link || true
php artisan key:generate --force
php-fpm