FROM alpine:3.13.7

RUN apk add --update \
  bash \
  mongodb-tools \
  curl \
  python3 \
  py-pip \
  py-cffi \
  && pip install --upgrade pip \
  && pip install --upgrade wheel \
  && apk add --virtual build-deps \
  gcc \
  libffi-dev \
  python3-dev \
  linux-headers \
  musl-dev \
  openssl-dev \
  rust \
  cargo \
  && pip install gsutil \
  && apk del build-deps \
  && rm -rf /var/cache/apk/*

CMD ["/bin/sh"]
