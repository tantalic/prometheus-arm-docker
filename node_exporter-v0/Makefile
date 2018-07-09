APP := node_exporter
MAJOR_RELEASE := v0
PORT := 9100

Dockerfile: Dockerfile.orig
	sed \
		-e 's,LABEL maintainer.*,LABEL maintainer $(DOCKER_MAINTAINER),' \
		-e '$$!N;P;/\nEXPOSE/r cross-plat.Dockerfile' -e D \
		< $(<) > $(@)

include ../Makefile.common
