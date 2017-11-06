APP := pushgateway
MAJOR_RELEASE := v0
PORT := 9091

Dockerfile: Dockerfile.orig
	sed \
		-e 's,FROM .*,FROM @BUSYBOX_IMAGE@,' \
		-e 's,LABEL maintainer.*,LABEL maintainer $(DOCKER_MAINTAINER),' \
		< $(<) > $(@)

include ../Makefile.common
