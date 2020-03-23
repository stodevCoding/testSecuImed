FROM ubuntu:14.04
MAINTAINER foody

RUN apt-get update
RUN apt-get install -y nginx
ADD index.html /usr/share/nginx/html/index.html

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

EXPOSE 80
