# Use an official OpenJDK image as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the Java source code from the local machine into the container at the working directory
COPY ./FIRSTAPP/src /usr/src/app

# Compile the Java code
RUN javac App.java

# Specify the command to run on container start
CMD ["java", "App"]
