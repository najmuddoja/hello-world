# Pull base image 
From tomcat:latest

# Maintainer 
MAINTAINER "najmuddoja@gmail.com" 
COPY ./webapp.war /usr/local/tomcat/webapps

