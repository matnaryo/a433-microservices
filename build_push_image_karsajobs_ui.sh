#!/bin/sh
# membuat Docker image dari Dockerfile
docker build -t matnaryo/karsajobs-ui:latest .
# login ke akun Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u matnaryo --password-stdin
# push image ke Docker Hub
docker push matnaryo/karsajobs-ui:latest .