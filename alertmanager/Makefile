
.PHONY: arm64 armv5 armv6 armv7
.DEFAULT_GOAL := all

all: arm64 armv5 armv6 armv7 ## Create docker images for all architectures

arm64: 
	cd arm64 && make clean docker docker-push

armv5: 
	cd armv5 && make clean docker docker-push

armv6: 
	cd armv6 && make clean docker docker-push

armv7: 
	cd armv7 && make clean docker docker-push

help: ## Print available commands
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
