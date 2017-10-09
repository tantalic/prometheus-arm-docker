APP := prometheus
MAJOR_RELEASE := v1
PORT := 9090

Dockerfile: Dockerfile.orig Makefile
	sed -r \
		-e 's,LABEL maintainer.*,LABEL maintainer $(DOCKER_MAINTAINER),' \
		-e 's,documentation/examples/,,' \
		-e 's/storage.tsdb.path/storage.local.path/' \
		-e '$$!N;P;/\nUSER/r cross-plat.Dockerfile' -e D \
		< $(<) > $(@)

include ../Makefile.common
