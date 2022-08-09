FROM centos:latest
MAINTAINER aniketkulaye618@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/eoc.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip eoc.zip
RUN cp -rvf eoc/* .
RUN rm -rf eoc eoc.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
