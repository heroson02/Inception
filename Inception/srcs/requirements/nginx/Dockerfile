FROM debian:buster
RUN apt-get  update
RUN apt-get  install nginx -y
RUN apt-get  install openssl -y
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=KO/ST=Seoul/L=Seoul/O=DQ/OU=DQ/CN=KYUJLEE/emailAddress=kjsl4tw@naver.com"
EXPOSE 443
COPY ./tools/default /etc/nginx/sites-available/default
CMD ["nginx", "-g", "daemon off;"]
