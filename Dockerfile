FROM crowdin/cli:5.3.0@sha256:3e300175fb9fa1af60767bf02e1f77ea7d3bd4ead60dec5168c2d65b354b2572

RUN apk --no-cache upgrade openjdk17-jre openjdk17-jre-headless && \
    apk --no-cache add curl git git-lfs jq gnupg su-exec bash

COPY . .
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
