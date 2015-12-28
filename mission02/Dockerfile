############################################################
# Dockerfile to build ssh container images
# Based on Ubuntu
############################################################

# Set Ubuntu as base image
FROM ubuntu:latest

# Set Local infos
ENV        USER fmorales
ENV        HOSTNAME 42born2code
MAINTAINER Fernan MORALES - fmorales@student.42.fr

# Update apt on system and install openssh on container
RUN apt-get update && apt-get install -y openssh-server

# add user fmorales
RUN useradd -ms /bin/bash fmorales && mkdir -p /home/$USER/.ssh

# modify ssh config file to allow connections on port 42 via RSA public key
RUN sed -i 's/Port 22/Port 42/g' /etc/ssh/sshd_config && sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# add rsa public key
ADD		id_rsa.pub /home/$USER/.ssh/authorized_keys

EXPOSE 42

CMD		service ssh start & /bin/bash