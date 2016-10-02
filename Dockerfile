############################################################
# Dockerfile to compile Xperia AOSP
############################################################

# Set the base image to use to Ubuntu
FROM ubuntu:14.04

LABEL version=1.0

# Update the default application repository sources list
RUN dpkg --add-architecture i386
RUN apt-get update

RUN apt-get purge openjdk-\* icedtea-\* icedtea6-\*
RUN apt-get install -y openjdk-7-jdk
RUN apt-get install -y bison 
RUN apt-get install -y g++-multilib 
RUN apt-get install -y git gperf 
RUN apt-get install -y libxml2-utils 
RUN apt-get install -y make 
RUN apt-get install -y zlib1g-dev:i386 
RUN apt-get install -y zip
RUN apt-get install -y curl

ENV HOME /root
ENV USER root

WORKDIR /root

CMD ["bash"]

