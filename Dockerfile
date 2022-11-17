FROM ubuntu
MAINTAINER soriano2<qgsoriano1@tip.edu.ph>

# skip prompts
ARG DEBIAN_FRONTEND=noninteractive

# update packages
RUN apt update; apt dist-upgrade -y

# install apache
RUN apt install -y apache2 mariadb-server

# set entrypoint
ENTRYPOINT apache2ctl -d FOREGROUND
