FROM centos:latest
LABEL maintainer="edwarogers"
RUN yum -y update &&\
    yum -y install httpd

USER root
COPY index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80


