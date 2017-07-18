# oho-reader Dockerfile

FROM mhart/alpine-node

RUN set -ex \
    && apk add --update --no-cache git \
    && rm -rf /var/cache/apk

COPY docker-entrypoint.sh /entrypoint.sh

ENV PORT    3001

EXPOSE $PORT/tcp

ENTRYPOINT ["/entrypoint.sh"]
