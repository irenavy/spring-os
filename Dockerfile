# Start with a base image containing Java runtime

FROM adoptopenjdk/openjdk11:alpine-jre


# Add a volume pointing to /tmp
VOLUME /tmp

# The application's jar file
ARG JAR_FILE=target/spring-os-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} spring-os-0.0.1-SNAPSHOT.jar

# Run the jar file
ENTRYPOINT ["java","-Dspring.config.location=/app/config","-jar","/spring-os-0.0.1-SNAPSHOT.jar"]
