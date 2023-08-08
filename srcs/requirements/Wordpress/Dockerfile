FROM    debian:buster
    
RUN 	apt-get update && apt-get install -y php7.3 \ 
        php7.3-fpm php7.3-mysql mariadb-client \
        nginx curl
RUN     curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN     chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
RUN     mkdir -p /run/php/


COPY    ./tools/Wp_script.sh /Wp_script.sh
COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d/

RUN     chmod +x Wp_script.sh

EXPOSE  9000

ENTRYPOINT ["sh", "Wp_script.sh"]

CMD ["php-fpm7.3", "-R", "-F"]