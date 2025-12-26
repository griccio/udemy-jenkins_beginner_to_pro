# Use Jenkins base image
FROM jenkins/jenkins:lts-jdk17

# Switch to root user to install Maven
USER root

# Update package list and install Maven
RUN apt-get update && \
    apt-get install -y maven 


# Expose Jenkins default port
EXPOSE 8080