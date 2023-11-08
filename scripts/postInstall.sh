#set env vars
set -o allexport; source .env; set +o allexport;

#wait until the server is ready
echo "Waiting for software to be ready ..."
sleep 30s;

docker-compose exec app composer install --no-interaction --prefer-dist --optimize-autoloader

docker-compose exec app php artisan storage:link || true
docker-compose exec app php artisan key:generate