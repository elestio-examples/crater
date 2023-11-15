#!/usr/bin/env bash
cp -rf ./src/webapps/crater/* ./
docker buildx build . --output type=docker,name=elestio4test/crater:latest | docker load