FROM ubuntu
MAINTAINER Gianluca Arbezzano <gianarb92@gmail.com>

RUN apt-get update
RUN apt-get install -y wget
RUN wget http://s3.amazonaws.com/influxdb/influxdb_latest_amd64.deb
RUN dpkg -i influxdb_latest_amd64.deb

EXPOSE 8083
EXPOSE 8086

CMD ["/usr/bin/influxdb", "--config=/opt/shared/conf/influxdb_conf.toml"]
