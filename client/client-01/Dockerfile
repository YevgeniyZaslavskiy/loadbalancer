FROM ubuntu
MAINTAINER gooduser

RUN apt-get update && apt-get -y upgrade && apt-get install -y curl
#RUN apt-get install -y apt-utils vim htop mc

COPY ./entrypoint.sh /ep.sh
COPY ./download.sh /dl.sh
COPY ./log.txt /log.txt
RUN chmod a+x /ep.sh
RUN chmod a+x /dl.sh

RUN mkdir -p /var/opt/dump/

CMD [ "/ep.sh", "" ]
CMD [ "/dl.sh", "" ]
