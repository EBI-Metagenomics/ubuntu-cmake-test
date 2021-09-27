SHELL=/bin/bash

USER=hortaebi
IMG=ubuntu-cmake-test
PLAT=linux/amd64,linux/arm64/8

.PHONY: all bionic impish focal terminfo

all: bionic impish focal terminfo

bionic: terminfo
	docker buildx build -f $@/Dockerfile --push -t $(USER)/$(IMG):$@ --platform $(PLAT) .

impish:
	docker buildx build -f $@/Dockerfile --push -t $(USER)/$(IMG):$@ --platform $(PLAT) .

focal:
	docker buildx build -f $@/Dockerfile --push -t $(USER)/$(IMG):$@ --platform $(PLAT) .

terminfo:
	./terminfo
