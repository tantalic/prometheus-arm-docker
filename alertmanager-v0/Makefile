APP := alertmanager
MAJOR_RELEASE := v0
PORT = 9093

Dockerfile: Dockerfile.orig
	sed \
		-e 's,FROM .*,FROM @BUSYBOX_IMAGE@,' \
		-e 's,LABEL maintainer.*,LABEL maintainer $(DOCKER_MAINTAINER),' \
		-e 's,doc/examples,,' \
		< $(<) > $(@)

include ../Makefile.common
