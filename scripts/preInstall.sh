#set env vars
set -o allexport; source .env; set +o allexport;

mkdir -p ./crater
chown -R 1000:1000 ./crater

cat << EOT >> ./.env

APP_KEY=
CRON_JOB_AUTH_TOKEN=""
EOT