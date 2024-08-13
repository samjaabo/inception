FROM debian:bullseye

ARG DOMAIN_NAME
ARG CERTS_DIR

RUN apt update -y && apt upgrade -y 
RUN apt install -y nginx openssl gettext

RUN mkdir -p "$CERTS_DIR"
COPY conf/nginx.conf /etc/nginx/nginx.conf.template
RUN envsubst < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf


RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx.key \
    -out /etc/nginx/ssl/nginx.crt \
    -subj "/C=MA/ST=Khouribga/L=Khouribga/O=1337/OU=Student/CN=samjaabo.42.fr"

CMD [ "nginx", "-g", "daemon off;" ]