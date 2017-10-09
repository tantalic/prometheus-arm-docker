build: $(patsubst %,build-%,$(wildcard *-v?))
push: $(patsubst %,push-%,$(wildcard *-v?))
test: $(patsubst %,test-%,$(wildcard *-v?))
clean: $(patsubst %,clean-%,$(wildcard *-v?))

ARCHES=amd64 armv7 arm64

build-%:
	for i in $(ARCHES); do make -C $(*) build ARCH=$$i;done

push-%:
	for i in $(ARCHES); do make -C $(*) push ARCH=$$i;done

clean-%:
	for i in $(ARCHES); do make -C $(*) clean ARCH=$$i;done

test-%:
	make -C $(*) test ARCH=amd64

moreclean: clean
	rm -f */Dockerfile */Dockerfile.orig */Makefile.ver */.stamp-*

fullclean: moreclean
	rm -rf */download

.PHONY: all-%
