FROM ubuntu
RUN apt update
RUN apt-get install apache2 -y
RUN apt clean
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
EXPOSE 80

