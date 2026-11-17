FROM crowdin/cli:5.6.0@sha256:5caf6ca9ff8fb62dfd5eb901e7b29924a38c4699243ac424ea5f60c99c660988

RUN apk --no-cache upgrade openjdk17-jre openjdk17-jre-headless && \
    apk --no-cache add curl git git-lfs jq gnupg su-exec bash

COPY . .
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
