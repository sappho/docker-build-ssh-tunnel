FROM ubuntu:14.04

MAINTAINER Andrew Heald <andrew@heald.uk>

RUN apt-get -qq update
RUN apt-get -qq -y install autossh

RUN useradd -m -s /bin/false ssh-tunnel

VOLUME /home/ssh-tunnel/.ssh

EXPOSE 11111
COPY entrypoint.sh /opt/entrypoint.sh
ENTRYPOINT ["/opt/entrypoint.sh"]
