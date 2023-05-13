FROM	debian:buster
RUN 	apt-get update -y && apt-get upgrade -y
RUN 	apt-get install -y mariadb-server
COPY	./script.sh ./script.sh
RUN		chmod +x script.sh
EXPOSE	3306
RUN		sh script.sh
CMD 	["mysqld"]