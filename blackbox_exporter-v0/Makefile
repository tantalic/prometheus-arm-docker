APP := blackbox_exporter
MAJOR_RELEASE := v0
PORT = 9115

Dockerfile: Dockerfile.orig
	sed \
		-e 's,LABEL maintainer.*,LABEL maintainer $(DOCKER_MAINTAINER),' \
		-e 's,FROM .*,FROM @BUSYBOX_IMAGE@,' \
		< $(^) > $(@)

include ../Makefile.common
