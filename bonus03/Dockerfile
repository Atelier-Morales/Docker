############################################################
# Dockerfile to build php environment container images
# Based on Ubuntu
############################################################

# Set Ubuntu as base image
FROM ubuntu

# Set Local infos
ENV        HOSTNAME 42born2code
MAINTAINER Fernan MORALES - fmorales@student.42.fr


# Update apt on system and install apache2, php and mysql on container
RUN apt-get update && apt-get install -y apache2 && apt-get install -y php5 && apt-get install -y mysql-server

# Expose port 80
EXPOSE 8080

# Run bash and nginx on start
CMD service apache2 start & /bin/bash