FROM crowdin/cli:5.4.0@sha256:97499f5455dc564ed95f0498bf9b03696aab860665775e88fa725ec895cfc0d9

RUN apk --no-cache upgrade openjdk17-jre openjdk17-jre-headless && \
    apk --no-cache add curl git git-lfs jq gnupg su-exec bash

COPY . .
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
