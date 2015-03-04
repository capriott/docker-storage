FROM ubuntu:14.04
MAINTAINER Dennis Schridde <devurandom@gmx.net>

VOLUME /home

RUN groupadd -g 1000 storage && useradd -u 1000 -g storage storage

CMD ["mkhomedir_helper", "storage"]
