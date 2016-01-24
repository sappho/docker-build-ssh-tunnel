FROM ubuntu:trusty

MAINTAINER Andrew Heald <andrew@heald.uk>

RUN apt-get -qq update
RUN apt-get -qq -y install autossh
RUN apt-get clean

VOLUME /root/.ssh

COPY entrypoint.sh /opt/entrypoint.sh
ENTRYPOINT ["/opt/entrypoint.sh"]
