FROM nginx:1.14.2-alpine

WORKDIR /home/nginx

COPY script/ ./script/
COPY conf.d/ /etc/nginx/conf.d/

RUN mkdir /etc/nginx/logs && \
 mkdir -p /home/nginx/serve_nginx
