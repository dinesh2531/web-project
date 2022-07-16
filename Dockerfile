FROM tomcat9
RUN /target/*.war /usr/local/tomcat/webapps/war-web-project.war
EXPOSE 8080