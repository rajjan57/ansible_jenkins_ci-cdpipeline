FROM ubuntu
RUN apt-get update
RUN apt install nginx -y
RUN apt install systemctl -y
COPY . /var/www/html/
ENTRYPOINT ["nginx", "-g", "daemon off;"]
EXPOSE 80
