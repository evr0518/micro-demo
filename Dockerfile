FROM openjdk:8-jdk-alpine

# Add Maintainer Info
MAINTAINER Vinay Ellanki <evr0518@gmail.com>

# The application's jar file
ARG JAR_FILE=target/docker-micro-service-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} docker-micro-service.jar


# Run the jar file 
ENTRYPOINT ["java","-jar","/docker-micro-service.jar"]
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/docker-micro-service-0.0.1-SNAPSHOT.jar"]
