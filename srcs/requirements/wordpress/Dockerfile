FROM alpine:3.19

RUN apk update && apk upgrade

RUN apk add  php-fpm  && apk add  wget && mkdir -p /var/www/html

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY ./tools/script.sh /

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

CMD  ["./script.sh"]