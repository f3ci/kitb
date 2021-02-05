FROM kalilinux/kali-rolling

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y kali-desktop-xfce tightvncserver novnc xfonts-base dbus-x11 expect \
    net-tools curl nano iputils-ping \
    burpsuite sqlmap dirb dirbuster wfuzz iputils-ping

COPY ./start.sh /start.sh

RUN chmod +x /start.sh

EXPOSE 8082
WORKDIR /root
ENV HOME=/root \
    SHELL=/bin/bash
ENTRYPOINT ["/start.sh"]
