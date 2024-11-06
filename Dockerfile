# Use an official Tomcat image from Docker Hub
FROM tomcat:9-jdk11-openjdk-slim

# Maintainer information
LABEL maintainer="praneshragavendar@gmail.com"

# Set the working directory inside the container
WORKDIR /usr/local/tomcat/webapps

# Copy the .war file into the Tomcat webapps directory
# Assuming the WAR file is named `java-tomcat-maven-example.war` (you can adjust this based on your actual WAR file name)
COPY target/java-tomcat-maven-example.war /usr/local/tomcat/webapps/ROOT.war

# Expose the Tomcat HTTP port (default: 8080)
EXPOSE 8080

# Run Tomcat server when the container starts
CMD ["catalina.sh", "run"]
