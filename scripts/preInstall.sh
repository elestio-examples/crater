#set env vars
set -o allexport; source .env; set +o allexport;

cat << EOT >> ./.env

APP_KEY=
CRON_JOB_AUTH_TOKEN=""
EOT