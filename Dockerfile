FROM crowdin/cli:4.15.0

RUN apk --no-cache add curl git git-lfs jq gnupg su-exec bash;

COPY . .
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
