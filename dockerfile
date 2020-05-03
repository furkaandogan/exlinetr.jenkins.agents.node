FROM jenkins/jnlp-slave
MAINTAINER exlinetr<it@exlinetr.com>

LABEL Author="exlinetr"
LABEL AuthorMail="it@exlinetr.com"
LABEL Version="1.0.0"


USER root

RUN apt-get update -y
RUN apt-get install git -y
RUN apt-get install curl -y
RUN apt-get install gettext-base -y

RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -

RUN apt-get install nodejs