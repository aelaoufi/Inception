FROM	debian:buster
RUN		apt-get -y update && apt-get -y install nginx
COPY	config /etc/nginx/sites-available/default
EXPOSE	443
CMD		["/usr/sbin/nginx", "-g", "daemon off;"]