FROM ubuntu
RUN apt update
RUN apt install nginx -y
ADD ./var/www/html/
Expose 88
ENTRYPOINT nginxctl -D FOREGROUND
