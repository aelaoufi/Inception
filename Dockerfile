FROM debian:buster
COPY . .
RUN apt-get install NGINX \
	
