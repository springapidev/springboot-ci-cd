# Use OpenJDK 21 base image
FROM openjdk:21-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file built by Maven into the container
COPY target/springboot-ci-cd-1.0.0.jar /app/springboot-ci-cd.jar

# Expose the application port (default 8080)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "springboot-ci-cd.jar"]
