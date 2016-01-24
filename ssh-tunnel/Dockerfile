FROM ubuntu:trusty

MAINTAINER Andrew Heald <andrew@heald.uk>

RUN apt-get -qq update
RUN apt-get -qq -y install autossh
RUN apt-get clean

RUN useradd -m -s /bin/bash ssh-tunnel

VOLUME /home/ssh-tunnel/.ssh

COPY entrypoint.sh /opt/entrypoint.sh
ENTRYPOINT ["/opt/entrypoint.sh"]
