FROM centos:7
MAINTAINER ursbrchandra@gmail.com
RUN yum -y update
RUN yum -y install httpd
ADD code /var/www/html
EXPOSE 80
ADD config /opt
RUN chmod 755 /opt/myenv
RUN /opt/myenv
ENV BACKENDLB=test
CMD ["httpd","-D","FOREGROUND"]
ENTRYPOINT