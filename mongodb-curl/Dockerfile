ARG MONGO_VERSION

FROM mongo:${MONGO_VERSION}

RUN mv /etc/apt/sources.list.d/mongodb-org.list /tmp/mongodb-org.list && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl &&  \
    mv /tmp/mongodb-org.list /etc/apt/sources.list.d/mongodb-org.list
