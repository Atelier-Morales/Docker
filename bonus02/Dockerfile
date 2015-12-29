############################################################
# Dockerfile to build a nested docker container images
# Based on Ubuntu
############################################################

# Set Ubuntu as base image
FROM ubuntu:latest

# Set Local infos
MAINTAINER Fernan MORALES - fmorales@student.42.fr

# Update apt on system and install wget on container
RUN apt-get update && apt-get install -y wget

RUN wget -qO- https://get.docker.com/ | sh

# Run bash and nginx on start
CMD /bin/bash