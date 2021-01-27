#FROM nginx:alpine
#COPY . /etc/nginx/html/


FROM ubuntu:14.04.3

MAINTAINER Chirag Prajapati

RUN  apt-get update -y 

RUN  apt-get install apache2 -y 

RUN  a2dismod mpm_event \
	&& a2enmod mpm_prefork cgi \
	&&  service apache2 restart

