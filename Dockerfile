FROM tomcat9
RUN /target/*.war /usr/local/tomcat/webapps/war-web-project-1.0.0.war
EXPOSE 8080
