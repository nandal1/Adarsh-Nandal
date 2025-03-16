# Use the official OpenJDK image as the base image
FROM openjdk:21-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the target folder into the container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8083 (or whichever port your app uses)
EXPOSE 8083

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
