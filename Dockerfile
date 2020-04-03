FROM ubuntu:latest
RUN apt-get update \
    && apt-get install -y apache2
ADD index.html /var/www/html
ADD images /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 83 

