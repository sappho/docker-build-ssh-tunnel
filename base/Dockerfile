FROM ubuntu:trusty

MAINTAINER Andrew Heald <andrew@heald.uk>

RUN apt-get -qq update
RUN apt-get -qq -y install autossh
RUN apt-get clean

RUN mkdir /root/.ssh
VOLUME /root/.ssh

ADD entrypoint.sh /sbin/
ENTRYPOINT ["/sbin/entrypoint.sh"]
