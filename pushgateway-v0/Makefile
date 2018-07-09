APP := pushgateway
MAJOR_RELEASE := v0
PORT := 9091

Dockerfile: Dockerfile.orig
	sed \
		-e 's,LABEL maintainer.*,LABEL maintainer $(DOCKER_MAINTAINER),' \
		-e '$$!N;P;/\nWORKDIR/r cross-plat.Dockerfile' -e D \
		< $(<) > $(@)

include ../Makefile.common
