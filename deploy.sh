#!/usr/bin/env bash
set -Eeuo pipefail

APP_DIR="/opt/deploy/lab"

cd $APP_DIR

echo "Imagem:"
echo "${ACR_LOGIN_SERVER}/${IMAGE_NAME}:${IMAGE_TAG}"

docker compose config -q

docker compose pull || true

docker compose up -d --remove-orphans

docker compose ps