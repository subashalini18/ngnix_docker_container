FROM nginx:1.19.8

RUN apt-get update

COPY config/nginx.conf /etc/nginx/nginx.conf
COPY config/default.conf /etc/nginx/conf.d/default.conf
COPY config/network_internal.conf /etc/nginx/network_internal.conf
COPY config/index.html /etc/nginx/html/index.html
COPY config/passwords /etc/nginx/passwords