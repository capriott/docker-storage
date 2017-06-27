FROM debian:sid
MAINTAINER Andrea Capriotti <a.capriotti@cineca.it>

VOLUME /home

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

CMD ["mkhomedir_helper", "storage"]
