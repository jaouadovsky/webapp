FROM ubuntu
MAINTAINER jaouadovsky (jaouadovsky@yahoo.fr)
RUN apt-get update
RUN apt-get install -y nginx
EXPOSE 80
RUN rm -rf /var/www/html/*
RUN DEBIAN_FRONTEND=noninteractive apt install -y nginx git
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html
#ADD static-website-example/ /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
