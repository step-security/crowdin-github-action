FROM crowdin/cli:5.5.0@sha256:cd54d0495cfd97bf596125306b44570f2d5071d808d4dab573f579a593160475

RUN apk --no-cache upgrade openjdk17-jre openjdk17-jre-headless && \
    apk --no-cache add curl git git-lfs jq gnupg su-exec bash

COPY . .
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
