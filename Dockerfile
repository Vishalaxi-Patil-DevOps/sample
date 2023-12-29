# Use the official OpenJDK 17 base image
FROM openjdk:17

# Set the working directory
WORKDIR /app

# Copy the Java source file into the container
COPY . /app/

# Compile the Java source file
RUN javac App.java

# Set the entry point for running the application
ENTRYPOINT ["java", "App"]