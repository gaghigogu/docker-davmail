FROM debian:trixie

RUN apt update && apt install -y davmail

COPY ./davmail.properties /etc/davmail/

EXPOSE 1080
EXPOSE 1143
EXPOSE 1025
EXPOSE 1389

VOLUME /etc/davmail /var/log/davmail

ENTRYPOINT ["/usr/bin/davmail-server", "/etc/davmail/davmail.properties"]

