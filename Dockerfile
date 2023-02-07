FROM python:3-alpine as base
RUN apk update && apk add --no-cache ffmpeg libxslt-dev libxml2-dev

FROM base as builder
ARG STREAMLINK_VERSION
RUN apk add --no-cache --virtual .build-deps gcc musl-dev
RUN pip wheel --wheel-dir=/root/wheels streamlink==$STREAMLINK_VERSION

FROM base

COPY --from=builder /root/wheels /root/wheels
RUN pip install --no-index --find-links=/root/wheels streamlink

ENTRYPOINT ["/usr/local/bin/streamlink"]
