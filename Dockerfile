FROM alpine:latest

RUN apk -q update

RUN apk -q add nginx

ADD nginx.conf /etc/nginx/nginx.conf

RUN nginx -T

RUN echo '{"errorCode":404,"title":"Resource not found"}' > /var/lib/nginx/html/404.json
