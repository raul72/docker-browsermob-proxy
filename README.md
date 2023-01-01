# About this Repo

This is the Git repo of the Docker image for [BrowserMob Proxy](https://hub.docker.com/r/raul72/browsermob-proxy/).

[![Stars](https://img.shields.io/docker/stars/raul72/browsermob-proxy.svg)](https://hub.docker.com/r/raul72/browsermob-proxy/)
[![Pulls](https://img.shields.io/docker/pulls/raul72/browsermob-proxy.svg)](https://hub.docker.com/r/raul72/browsermob-proxy/)
![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/raul72/browsermob-proxy/main.yml)

# What is BrowserMob Proxy

  - https://bmp.lightbody.net/
  - https://github.com/lightbody/browsermob-proxy

# Build params

  - `BMP_VERSION`
  - `BMP_DOWNLOAD_SHA256`

# Run params

Refer to [BrowserMob doc](https://github.com/lightbody/browsermob-proxy/blob/master/README.md#command-line-arguments) for detailed information. 

  - `BMP_PORT` - default: 8080
  - `BMP_ADDRESS` - default: 0.0.0.0
  - `BMP_PROXY_PORT_RANGE` - default: 8081-8581
  - `BMP_PROXY_TTL` - default: 0 (off)

Usage: 
```
docker run -e BMP_PORT=8080 -e BMP_ADDRESS=0.0.0.0 -e BMP_PROXY_PORT_RANGE=8081-8581 -e BMP_PROXY_TTL=0 raul72/browsermob-proxy
```
