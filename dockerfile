FROM tomcat:latest
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/demo-0.0.1-SNAPSHOT.jar demo-0.0.1-SNAPSHOT.jar
EXPOSE 8080
CMD ["java","-jar", "/demo-0.0.1-SNAPSHOT.jar"]