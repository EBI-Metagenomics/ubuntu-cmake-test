SHELL=/bin/bash

IMG=ubuntu-cmake-test
PLAT=linux/amd64,linux/arm64/8

.PHONY: all impish bionic

all: impish bionic

impish:
	docker buildx build -f impish/Dockerfile --push -t hortaebi/$(IMG):21.10 --platform $(PLAT) .

bionic:
	docker buildx build -f bionic/Dockerfile --push -t hortaebi/$(IMG):18.04 --platform $(PLAT) .
