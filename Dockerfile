FROM centos:latest
LABEL Name="Aman Sharma"
LABEL EmailId="amnxfactosdar@gmail.com"
MAINTAINER amnxfaasdctor@gmail.com
RUN yum install httpd -y \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/listrace.zip      /var/www/html
WORKDIR /var/www/html
RUN unzip listrace.zip  
RUN cp -rvf listrace-v1.0/* .
RUN rm -rf listrace.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
