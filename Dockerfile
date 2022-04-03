FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx
RUN rm -f /var/www/html/index.*
COPY ./myhtml/. /var/www/html/

ENTRYPOINT ["/usr/sbin/nginx", "-g" , "daemon off;"]
EXPOSE 80

