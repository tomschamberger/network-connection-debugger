FROM alpine:latest

RUN apk update && \
    apk add zsh vim inetutils-telnet netcat-openbsd paris-traceroute-ping

COPY entry.sh /entry.sh

ENTRYPOINT ["/entry.sh"]
