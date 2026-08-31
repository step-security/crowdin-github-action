FROM crowdin/cli:5.0.1@sha256:8aabcce071f864d4505290d841e5d1d3913f5da50b4a4c80d4abf71e5fb388d3

RUN apk --no-cache upgrade openjdk17-jre openjdk17-jre-headless && \
    apk --no-cache add curl git git-lfs jq gnupg su-exec bash

COPY . .
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
