FROM alpine:latest

RUN apk update

RUN apk add nginx

ADD nginx.conf /etc/nginx/nginx.conf

RUN nginx -T
