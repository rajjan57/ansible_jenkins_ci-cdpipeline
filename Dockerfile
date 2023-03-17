FROM ubuntu
RUN apt-get update
RUN apt install nginx -y
RUN apt install systemctl -y
COPY /home/ubuntu/workspace/deockerdemo/ /var/www/html/
EXPOSE 80
ENTRYPOINT nginx -D FOREGROUND
