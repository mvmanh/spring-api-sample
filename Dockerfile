# Use a minimal base image with Java (such as OpenJDK) for running the Spring Boot application.
FROM openjdk:17.0.1-jdk-slim

# Set the working directory in the container.
WORKDIR /app

# Copy the Spring Boot JAR file into the container. Adjust the JAR file name as needed.
COPY target/spring-api-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that the Spring Boot application will run on (adjust as needed).
EXPOSE 8080

# Define the command to run your Spring Boot application.
CMD ["java", "-jar", "app.jar"]
