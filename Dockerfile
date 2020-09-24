FROM tomcat:8.0

MAINTAINER Nilesh Bhaskar nilbhaskar@gmail.com

ENV role=app \
    env=dev \
    name=Nilesh

VOLUME /usr/local/tomcat/webapps/

RUN rm -rf /usr/local/tomcat/webapps/ROOT \
    && apt-get update \
    && apt-get -y upgrade \
    && apt-get install net-tools \
    && apt-get install telnet \
    && apt-get install curl \
    && apt-get install -y vim

COPY Sample.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
