FROM	debian:buster
RUN		sudo apt update && sudo apt install mariadb-server && sudo mysql_secure_installation
COPY	cert.pem /etc/ssl/cert.pem
COPY	key.pem /etc/ssl/key.pem
COPY	config.conf /etc/nginx/conf.d
EXPOSE	443
CMD		["/usr/sbin/nginx", "-g", "daemon off;"]