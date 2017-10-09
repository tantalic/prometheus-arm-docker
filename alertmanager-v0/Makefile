APP := alertmanager
MAJOR_RELEASE := v0
PORT = 9093

Dockerfile: Dockerfile.orig
	sed \
		-e 's,LABEL maintainer.*,LABEL maintainer $(DOCKER_MAINTAINER),' \
		-e 's,FROM .*,FROM armbuild/busybox:latest,' \
		-e 's,doc/examples,,' \
		< $(^) > $(@)

include ../Makefile.common
