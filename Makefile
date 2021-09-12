SHELL=/bin/bash

TAG=ubuntu-cmake-test:latest
PLAT=linux/amd64,linux/arm64/8

.PHONY: default

default:
	docker buildx build --push -t hortaebi/$(TAG) --platform $(PLAT) .
