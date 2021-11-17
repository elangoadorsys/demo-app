FROM openjdk:8-jre-alpine
# copy application WAR (with libraries inside)
COPY target/react-and-spring-data-rest-0.0.1-SNAPSHOT.jar /react-and-spring-data-rest-0.0.1-SNAPSHOT.jar
# specify default command
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=test", "/react-and-spring-data-rest-0.0.1-SNAPSHOT.jar"]
