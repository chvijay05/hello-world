FROM ubuntu:latest
RUN  apt-get -y update && apt-get -y upgrade && apt-get -y install openjdk-8-jdk wget
RUN mkdir /usr/local/tomcat
WORKDIR /usr/local/tomcat
ADD  https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.87/bin/apache-tomcat-8.5.87.tar.gz .
RUN tar -xvzf apache-tomcat-8.5.87.tar.gz
RUN mv apache-tomcat-8.5.87/* /usr/local/tomcat
EXPOSE 8080
CMD [ "/usr/local/tomcat/bin/catalina.sh", "run" ]

