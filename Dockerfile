# Specify the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged JAR file into the container
COPY target/server-0.0.1-SNAPSHOT /app/server-0.0.1-SNAPSHOT

# Expose the port that your application runs on (default is 8080)
EXPOSE 8080

# Specify the command to run your application
CMD ["java", "-jar", "server-0.0.1-SNAPSHOT"]
