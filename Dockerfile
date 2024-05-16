FROM alpine:latest

RUN apk update

RUN apk add nginx

ADD nginx.conf /etc/nginx/nginx.conf

RUN nginx -T

RUN echo '{"errorCode":404,"title":"Resource not found"}' > /var/lib/nginx/404.json
