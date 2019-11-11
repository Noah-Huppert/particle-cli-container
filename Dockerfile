FROM alpine:latest

RUN apk add npm nodejs python3
RUN npm install -g particle-cli

WORKDIR /mnt

ENTRYPOINT [ "/usr/bin/particle" ]
