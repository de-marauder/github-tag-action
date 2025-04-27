FROM node:20-alpine
LABEL "repository"="https://github.com/de-marauder/github-tag-action"
LABEL "homepage"="https://github.com/de-marauder/github-tag-action"
LABEL "maintainer"="Nick Sjostrom"

RUN apk --no-cache add bash git curl jq && npm install -g semver

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
