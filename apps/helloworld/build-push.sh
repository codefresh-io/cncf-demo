#!/bin/bash -e

VERSION="$(cat VERSION)"
IMAGE_VERSIONED="joshcodefresh/helloworld:${VERSION}"
IMAGE_LATEST="joshcodefresh/helloworld:latest"

docker build -t $IMAGE_VERSIONED .
docker tag $IMAGE_VERSIONED $IMAGE_LATEST
docker push $IMAGE_VERSIONED
docker push $IMAGE_LATEST

