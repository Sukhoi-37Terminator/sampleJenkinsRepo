FROM tomcat:latest
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/demo-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]