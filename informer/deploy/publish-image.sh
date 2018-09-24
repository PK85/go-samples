#!/usr/bin/env bash
set -o errexit

echo "### docker login ###"
docker login

echo "### docker build ###"
#docker build -t local-image:tagname
docker build -t k8s-informer:latest . --label version=latest --label component=informer

echo "### docker tag ###"
#docker tag local-image:tagname reponame:tagname
docker tag k8s-informer:latest pk85/k8s-informer:latest

echo "### docker push ###"
#docker push reponame:tagname
docker push pk85/k8s-informer:latest