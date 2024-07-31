FROM debian:bullseye   

RUN apt update -y && apt upgrade -y && apt install -y nginx openssl

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx.key \
    -out /etc/nginx/ssl/nginx.crt \
    -subj "/C=MA/ST=Khouribga/L=Khouribga/O=1337/OU=Student/CN=samjaabo.42.fr"

RUN mkdir -p /var/www/html && echo "<h1>Hello World!</h1>" > /var/www/html/index.html 


CMD [ "nginx", "-g", "daemon off;" ]