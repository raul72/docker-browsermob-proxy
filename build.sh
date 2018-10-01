#!/bin/sh
for arch in amd64 arm32v6 arm64v8; do
	docker build  --build-arg "ARCH=${arch}" -t "raul72/browsermob-proxy:${arch}-latest" .
	docker push "raul72/browsermob-proxy:${arch}-latest"
done

docker manifest create -a raul72/browsermob-proxy:latest raul72/browsermob-proxy:amd64-latest raul72/browsermob-proxy:arm32v6-latest raul72/browsermob-proxy:arm64v8-latest
docker manifest annotate raul72/browsermob-proxy:latest raul72/browsermob-proxy:arm32v6-latest --os linux --arch arm
docker manifest annotate raul72/browsermob-proxy:latest raul72/browsermob-proxy:arm64v8-latest --os linux --arch arm64 --variant armv8
docker manifest push raul72/browsermob-proxy:latest
