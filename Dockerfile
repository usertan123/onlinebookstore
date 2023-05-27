FROM alpine
RUN apk add openjdk8
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.75/bin/apache-tomcat-9.0.75.tar.gz tomcat.tar.gz
RUN tar xvf tomcat.tar.gz -C /opt/
RUN mv /opt/apache-tomcat-9.0.75 /opt/tomcat
COPY artifacts/bookstore.war /opt/tomcat/webapps/
RUN ls /opt/tomcat/webapps/
EXPOSE 8080
CMD ./opt/tomcat/bin/startup.sh; sleep inf
