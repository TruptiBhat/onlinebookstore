FROM tomcat:9-jre8-alpine
WORKDIR /usr/local/tomcat
RUN rm -rf webapps/*
COPY /target/*.war webapps/
COPY ./scripts/start_server.sh .
RUN chmod +x start_server.sh
EXPOSE 8080
CMD ["./start_server.sh"]

