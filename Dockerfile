FROM ubuntu:bionic
MAINTAINER Wurstmeister 
RUN apt-get update; apt-get -y install gnupg dirmngr unzip openjdk-8-jre wget supervisor docker.io openssh-server
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
RUN echo 'root:wurstmeister' | chpasswd
RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22
