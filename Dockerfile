FROM debian
MAINTAINER Steven Jack <stevenmajack@gmail.com>

RUN apt-get update
RUN apt-get install build-essential debhelper -y
RUN mkdir /package

COPY run.sh /run.sh
RUN chmod u+x /run.sh

CMD ["-rfakeroot", "-us", "-uc"]
ENTRYPOINT ["./run.sh"]
