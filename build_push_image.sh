#!/bin/sh
# membuat Docker image dari Dockerfile
docker build -t item-app:v1 .
#melihat daftar image di lokal
docker images
