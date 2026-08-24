FROM crowdin/cli:4.15.1@sha256:afb8c55de56d10c3af3b2c771279c2073c31838fc0f6ac05b84396b697a748aa

RUN apk --no-cache upgrade openjdk17-jre openjdk17-jre-headless && \
    apk --no-cache add curl git git-lfs jq gnupg su-exec bash

COPY . .
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
