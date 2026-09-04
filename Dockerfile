FROM crowdin/cli:5.0.2@sha256:5c32a8b72b7d7f3095d6bd395c6eea0f50c9af57227f22818f9f3b1ec9afb81a

RUN apk --no-cache upgrade openjdk17-jre openjdk17-jre-headless && \
    apk --no-cache add curl git git-lfs jq gnupg su-exec bash

COPY . .
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
