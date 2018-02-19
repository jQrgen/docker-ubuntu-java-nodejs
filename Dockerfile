FROM ubuntu:16.04

MAINTAINER Anatoly Galiulin <galiulin.anatoly@gmail.com>

RUN apt-get update
RUN apt-get install -y \
  curl \
  openjdk-8-jdk \
  git \
  postgresql-client
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash
RUN apt-get install -y nodejs
RUN curl -o- -L https://yarnpkg.com/install.sh | bash
RUN export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

