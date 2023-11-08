#set env vars
set -o allexport; source .env; set +o allexport;

#wait until the server is ready
echo "Waiting for software to be ready ..."
sleep 30s;

docker-compose exec -T app composer install --no-interaction --prefer-dist --optimize-autoloader

docker-compose exec -T app php artisan storage:link || true
docker-compose exec -T app php artisan key:generate