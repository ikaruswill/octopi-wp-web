FROM nginx:1.15-alpine

ARG uid=1000
ARG gid=1000

RUN apk --no-cache add shadow && \
    usermod -u ${uid} nginx && \
    groupmod -g ${gid} nginx

ADD nginx.conf /etc/nginx/conf.d/default.conf
