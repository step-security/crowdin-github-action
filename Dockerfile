FROM crowdin/cli:4.15.0@sha256:ce21cf9ae45da5b3dcc7422b45b719c02aaab6a8a7c7afc1588d8d7805a23f78

RUN apk --no-cache upgrade openjdk17-jre openjdk17-jre-headless && \
    apk --no-cache add curl git git-lfs jq gnupg su-exec bash

COPY . .
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
