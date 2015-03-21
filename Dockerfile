FROM ubuntu
MAINTAINER Gianluca Arbezzano <gianarb92@gmail.com>

RUN apt-get update
RUN apt-get install -y wget
RUN wget http://get.influxdb.org/influxdb_0.9.0-rc10_amd64.deb
RUN dpkg -i influxdb_0.9.0-rc10_amd64.deb
RUN mkdir /opt/shared

EXPOSE 8083
EXPOSE 8086

CMD ["/etc/init.d/influxdb", "start"]