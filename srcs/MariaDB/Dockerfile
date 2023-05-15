FROM	debian:buster
RUN 	apt-get update -y && apt-get upgrade -y
RUN 	apt-get install -y mariadb-server

COPY	./MYSQL_START.sh ./MYSQL_START.sh
COPY	./USERS_SETUP.sh ./USERS_SETUP.sh

RUN		chmod +x MYSQL_START.sh
RUN		chmod +x USERS_SETUP.sh

RUN		sh MYSQL_START.sh
RUN		sh USERS_SETUP.sh

EXPOSE	3306
CMD 	["mysqld"]