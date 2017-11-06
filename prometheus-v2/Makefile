APP := prometheus
MAJOR_RELEASE := v2
PORT := 9090

Dockerfile: Dockerfile.orig
	sed \
		-e 's,LABEL maintainer.*,LABEL maintainer $(DOCKER_MAINTAINER),' \
		-e 's,documentation/examples/,,' \
		-e 's/storage.local.path/storage.tsdb.path/' \
		-e '$$!N;P;/\nUSER/r cross-plat.Dockerfile' -e D \
		< $(<) > $(@)

include ../Makefile.common

hotfixes:
	$(eval include Makefile.ver)
	# workaround https://github.com/prometheus/prometheus/pull/3415
	sed -i 's/static_config:/static_configs:/' $(DIR)/prometheus.yml


.PHONY: hotfixes
