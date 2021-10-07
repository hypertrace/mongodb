# MongoDB was last available in the 3.9 release
# https://pkgs.alpinelinux.org/packages?name=mongodb&branch=v3.9
FROM alpine:3.11.12

LABEL MAINTAINER Hypertrace "https://www.hypertrace.org/"

RUN apk add --upgrade --no-cache mongodb && \
    mkdir -p /mongodb/data && \
    chown -R mongodb /mongodb

# Add HEALTHCHECK and ENTRYPOINT scripts into the default search path
COPY docker-bin/* /usr/local/bin/

USER mongodb

# Data is written under WORKDIR
WORKDIR /mongodb

EXPOSE 27017 28017

# We use an interval of 5s to avoid too many console messages
HEALTHCHECK --interval=5s --timeout=2s --retries=3 CMD ["docker-healthcheck"]

ENTRYPOINT ["start-mongodb"]
