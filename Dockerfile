FROM	debian:buster
RUN		apt-get -y update && apt-get -y install nginx
COPY	cert.pem /etc/ssl/cert.pem
COPY	key.pem /etc/ssl/key.pem
COPY	config.conf /etc/nginx/conf.d
EXPOSE	443
CMD		["/usr/sbin/nginx", "-g", "daemon off;"]