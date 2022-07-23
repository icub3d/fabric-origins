FROM alpine:latest

LABEL maintainer "Joshua Marsh"

EXPOSE 25565/tcp
EXPOSE 25565/udp

RUN apk add --update --no-cache openjdk17-jre wget nss

VOLUME /data

COPY data /data

WORKDIR /data

ENTRYPOINT ["java", "-Xms3G", "-Xmx5G", "-jar", "fabric-server-mc.1.19-loader.0.14.8-launcher.0.11.0.jar", "nogui"]
