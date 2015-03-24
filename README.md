# InfluxDB
[InfluxDB](http://influxdb.com) is an open-source, distributed, time series database with no external dependencies.

## Run

### Run with external configuration file

This run command shares a volume containing the toml configuration for use with the -config option.

```bash
docker run -it -v influxdb_conf.toml:/influxdb_conf.toml gianarb/influxdb -config=/influxdb_conf.toml
```

### Get Version

```bash
docker run --rm gianarb/influxdb -v
```

## Build

```bash
make build
```
