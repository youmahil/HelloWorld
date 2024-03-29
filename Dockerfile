# Start with a base image containing Java runtime
FROM openjdk:17

# Add Author info
LABEL maintainer="youmahil@bluedigm.com"

# Add a volume to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=build/libs/helloworld-0.0.1-SNAPSHOT.jar

# Add the Application's jar to container
ADD ${JAR_FILE} hello-world.jar

# Run the jar file
ENTRYPOINT [ "java" , "-Djava.security.egd=file:/dev/./urandom" , "-jar" , "/hello-world.jar" ]
