FROM centos:7
MAINTAINER itsmeprabu8@gmail.com
RUN yum update -y
RUN yum install wget -y
RUN yum install java-1.8.0-openjdk.x86_64 -y
RUN wget http://apachemirror.wuchna.com/tomcat/tomcat-9/v9.0.35/bin/apache-tomcat-9.0.35.tar.gz
RUN gunzip apache-tomcat-9.0.35.tar.gz
RUN tar -xvf apache-tomcat-9.0.35.tar
RUN mv apache-tomcat-9.0.35 /usr/bin/tomcat9
COPY target/*war /usr/bin/tomcat9/webapps/
CMD ["/usr/bin/tomcat9/bin/catalina.sh","run"]
