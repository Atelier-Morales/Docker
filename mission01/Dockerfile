############################################################
# Dockerfile to build Hello World container images
# Based on Ubuntu
############################################################

# Set Ubuntu as base image
FROM ubuntu

# Set Local infos
ENV        USER fmorales
ENV        HOSTNAME 42born2code
MAINTAINER Fernan MORALES - fmorales@student.42.fr
RUN useradd -ms /bin/bash fmorales


# Update apt on system and install nginx on container
RUN apt-get update && apt-get install -y nginx

# Insert Hello World in index.html file
RUN echo "Hello World" > /usr/share/nginx/html/index.html

# Set user as root
RUN sed -i "s/root:x:0:0:root/$USER:x:0:0:root/g" /etc/passwd

# Expose port 80
EXPOSE 8080

# Set user as myself
USER fmorales

# Run bash and nginx on start
CMD service nginx start & /bin/bash

