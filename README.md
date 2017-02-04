# Prometheus ARM Docker Images

ARM [Docker][docker] images for [Prometheus][prometheus] for deployment on Raspberry Pi and similar boards.

All images use the official release binaries, downloaded from the [Prometheus download page][prom-downloads], and default/sample configurations. The images are also designed to match the [official x86 Docker images][prom-docker].

## Prometheus
The Prometheus monitoring system and time series database. The following images are available:

- [`tantalic/armv5-prometheus`](https://hub.docker.com/r/tantalic/armv5-prometheus/)
- [`tantalic/armv6-prometheus`](https://hub.docker.com/r/tantalic/armv6-prometheus/)
- [`tantalic/armv7-prometheus`](https://hub.docker.com/r/tantalic/armv7-prometheus/)
- [`tantalic/arm64-prometheus`](https://hub.docker.com/r/tantalic/arm64-prometheus/)

## Alertmanager
The [Alertmanager][alertmanager] handles alerts sent by client applications such as the Prometheus server. The following images are available:

- [`tantalic/armv5-alertmanager`](https://hub.docker.com/r/tantalic/armv5-alertmanager/)
- [`tantalic/armv6-alertmanager`](https://hub.docker.com/r/tantalic/armv6-alertmanager/)
- [`tantalic/armv7-alertmanager`](https://hub.docker.com/r/tantalic/armv7-alertmanager/)
- [`tantalic/arm64-alertmanager`](https://hub.docker.com/r/tantalic/arm64-alertmanager/)


[docker]: https://www.docker.com
[prometheus]: https://prometheus.io/
[alertmanager]: https://prometheus.io/docs/alerting/alertmanager/
[prom-downloads]: https://prometheus.io/download/
[prom-docker]: https://hub.docker.com/r/prom/
