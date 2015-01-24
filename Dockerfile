FROM ubuntu
MAINTAINER maruyama <norihiro.maruyama@gmail.com>
RUN apt-get install -y nginx
ADD index.html /usr/share/nginx/html/
ENTRYPOINT /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf
