#!/bin/sh
# membuat Docker image dari Dockerfile
docker build -t order-app:v1 .
# melihat daftar image di lokal
docker images
# merubah nama image agar sesuai dengan format Docker Hub
docker tag order-app:v1 matnaryo/order-app:v1
# login ke akun Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u matnaryo --password-stdin
# push image ke Docker Hub
docker push matnaryo/order-app:v1