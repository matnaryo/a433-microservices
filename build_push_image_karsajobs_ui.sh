#!/bin/sh
# membuat Docker image dari Dockerfile
docker build -t matnaryo/karsajobs-ui:latest .
# melihat daftar image di lokal
docker images
# merubah nama image agar sesuai dengan format Docker Hub
docker tag matnaryo/karsajobs-ui:latest matnaryo/karsajobs-ui:latest
# login ke akun Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u matnaryo --password-stdin
# push image ke Docker Hub
docker push matnaryo/karsajobs-ui:latest .