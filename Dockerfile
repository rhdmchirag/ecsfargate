#FROM nginx:alpine
#COPY . /etc/nginx/html/


FROM ubuntu:14.04.3

MAINTAINER Chirag Prajapati

RUN  apt-get update &&  apt-get upgrade -y 

RUN  apt-get install git -y && git clone https://github.com/brichbourg/Multi-Tier-App-Demo.git

RUN  apt-get install apache2 -y 

RUN   apt-get install python-pip -y

RUN set -xe \
    && apt-get update \
    && apt-get install python-pip

RUN pip3 install --upgrade pip

RUN  pip3 install pymysql

RUN  a2dismod mpm_event \
	&& a2enmod mpm_prefork cgi \
	&&  service apache2 restart

