#!/bin/bash
docker manifest create -a "${DOCKER_REPO}:latest" "${DOCKER_REPO}:amd64-latest" "${DOCKER_REPO}:arm32v6-latest" "${DOCKER_REPO}:arm64v8-latest"
docker manifest annotate "${DOCKER_REPO}:latest" "${DOCKER_REPO}:arm32v6-latest" --os linux --arch arm
docker manifest annotate "${DOCKER_REPO}:latest" "${DOCKER_REPO}:arm64v8-latest" --os linux --arch arm64 --variant armv8
docker manifest push "${DOCKER_REPO}:latest"
