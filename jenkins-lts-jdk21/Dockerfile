FROM jenkins/jenkins:lts-jdk21

USER root

RUN apt-get update && \
    apt-get install -y fontconfig openjdk-21-jdk && \
    apt-get clean

RUN update-alternatives --set java /usr/lib/jvm/java-21-openjdk-amd64/bin/java

USER jenkins