############################################################
# Dockerfile to build shared logs container images
# Based on Ubuntu
############################################################

# Set Ubuntu as base image
FROM ubuntu

# Set Local infos
MAINTAINER Fernan MORALES - fmorales@student.42.fr

# Update apt on system and install nginx on container
RUN apt-get update && apt-get install -y nginx

# Insert Hello World in index.html file
RUN echo "Hello World" > /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 8080

# Run bash and nginx on start
CMD service nginx start & /bin/bash

