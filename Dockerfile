FROM debian:sid
MAINTAINER Andrea Capriotti <a.capriotti@cineca.it>

VOLUME /home

RUN groupadd -g 1000 storage && useradd -u 1000 -g storage -G audio storage

CMD ["mkhomedir_helper", "storage"]
