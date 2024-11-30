# Use Tomcat 9 with JDK 11
FROM tomcat:9-jdk11-openjdk-slim

# Label the image with your DockerHub username
LABEL maintainer="praneshragavendars"

# Set the working directory inside the container
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file into the container's webapps directory
COPY target/java-tomcat-maven-example.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 for the Tomcat server
EXPOSE 8080

# Start Tomcat when the container is run
CMD ["catalina.sh", "run"]
