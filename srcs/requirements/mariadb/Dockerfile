FROM alpine:3.19

RUN apk update && apk upgrade && apk add mariadb

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/script.sh /

CMD ['/script.sh']