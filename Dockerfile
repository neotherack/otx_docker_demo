FROM ubuntu:latest

RUN apt update
RUN apt install -y apache2 apache2-utils
RUN apt clean
RUN apt autoremove

EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]
