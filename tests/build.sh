#!/usr/bin/env bash
sed -i "s~ARG user~ARG SCOPE="crater-user"~g" Dockerfile
sed -i "s~ARG uid~ARG SCOPE=1000~g" Dockerfile
sed -i '40i COPY entrypoint.sh ./' Dockerfile
sed -i '41i RUN ["chmod", "+x", "entrypoint.sh"]' Dockerfile
sed -i '44i ENTRYPOINT ["/var/www/entrypoint.sh"]' Dockerfile
docker buildx build . --output type=docker,name=elestio4test/crater:latest | docker load