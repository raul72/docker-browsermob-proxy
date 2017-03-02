FROM alpine 

ENV BMP_VERSION="2.1.1" \
    BMP_DOWNLOAD_SHA256="a1984f3c4376f65c3b43d9fb33cc7c3bba6cd87b0ab3c3d06cfdef33a2235377"

RUN apk update \
    && apk add ca-certificates curl unzip openjdk8-jre \
    && update-ca-certificates

RUN curl -fSL -o /tmp/browsermob-proxy.zip "https://github.com/lightbody/browsermob-proxy/releases/download/browsermob-proxy-$BMP_VERSION/browsermob-proxy-$BMP_VERSION-bin.zip" \
	&& echo "$BMP_DOWNLOAD_SHA256  /tmp/browsermob-proxy.zip" |  sha256sum -c - \
    && unzip /tmp/browsermob-proxy.zip -d / \
    && mv /browsermob-proxy-$BMP_VERSION /browsermob-proxy \
    && rm -f /tmp/browsermob-proxy.zip

ENV BMP_PORT="8080" \
    BMP_ADDRESS="0.0.0.0" \
    BMP_PROXY_PORT_RANGE="8081-8581" \
    BMP_PROXY_TTL="0"

CMD /browsermob-proxy/bin/browsermob-proxy -address $BMP_ADDRESS -port $BMP_PORT -proxyPortRange $BMP_PROXY_PORT_RANGE -ttl $BMP_PROXY_TTL
