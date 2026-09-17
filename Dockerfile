FROM crowdin/cli:5.1.0@sha256:07e335235db4175db63be98b765284494f9090e00253560a03e6e8e59c64049c

RUN apk --no-cache upgrade openjdk17-jre openjdk17-jre-headless && \
    apk --no-cache add curl git git-lfs jq gnupg su-exec bash

COPY . .
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
