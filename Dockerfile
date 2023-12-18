FROM tomcat:9-jre8-alpine
COPY /target/*.war /usr/local/tomcat/webapps/
CMD chmod 777 /usr/local/tomcat/webapps/
# ADD ./webapp /usr/local/tomcat/webapps/webapp
 
CMD ["scripts/start_server.sh", "run"]
