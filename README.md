[![Build
Status](https://travis-ci.org/jjo/prometheus-arm-docker.svg?branch=master)](https://travis-ci.org/jjo/prometheus-arm-docker)
# Prometheus ARM Docker Images

Forked from the original great work by
<https://github.com/jjo/prometheus-arm-docker>

ARM [Docker][docker] images for [Prometheus][prometheus] for
deployment on Raspberry Pi and similar boards.

All images use the official release binaries, downloaded from the
[Prometheus download page][prom-downloads], and default/sample
configurations. The images are also designed to match the [official
x86 Docker images][prom-docker].

No hardcorded version (only major release(s) per directory), see
`Makefile.common` and e.g. `prometheus-v1/Makefile`.

[docker]: https://www.docker.com
[prometheus]: https://prometheus.io/
[prom-downloads]: https://prometheus.io/download/
[prom-docker]: https://hub.docker.com/r/prom/
