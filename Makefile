.PHONY: build
version = 0.9

build:
	docker build -t gianarb/influxdb:$(version) .
	docker tag -f gianarb/influxdb:${version} gianarb/influxdb:latest
