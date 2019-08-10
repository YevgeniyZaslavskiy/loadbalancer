FROM ubuntu
MAINTAINER gooduser

RUN apt-get update && apt-get -y upgrade && apt-get install -y nginx
#RUN apt-get install -y apt-utils vim htop mc

COPY ./entrypoint.sh /ep.sh
RUN chmod a+x /ep.sh

CMD [ "/ep.sh", "" ]
