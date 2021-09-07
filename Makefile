SHELL=/bin/bash

TAG=ubuntu-cmake-test:20.10
PLAT=linux/amd64,linux/arm64/8

.PHONY: default cached

default:
	docker buildx build --push --no-cache --platform $(PLAT) -t hortaebi/$(TAG) .

cached:
	docker buildx build --push -t hortaebi/$(TAG) --platform $(PLAT) .
