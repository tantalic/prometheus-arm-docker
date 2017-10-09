APP := prometheus
MAJOR_RELEASE := v2
PORT := 9090

Dockerfile: Dockerfile.orig
	sed \
		-e 's,LABEL maintainer.*,LABEL maintainer $(DOCKER_MAINTAINER),' \
		-e 's,documentation/examples/,,' \
		-e 's/storage.local.path/storage.tsdb.path/' \
		-e '$$!N;P;/\nUSER/r cross-plat.Dockerfile' -e D \
		< $(^) > $(@)

include ../Makefile.common
