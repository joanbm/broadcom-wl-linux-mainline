.PHONY: download build-% test test-% test-%-staging

CONTAINER_ENGINE := $(shell command -v podman >/dev/null 2>&1 && echo podman || echo docker)

download:
	./download

build-%: download
	$(CONTAINER_ENGINE) build -f Dockerfile_$*_kernel -t broadcom-wl-$* .

test-%: build-%
	$(CONTAINER_ENGINE) run --network none --rm broadcom-wl-$*

test-%-staging: build-%
	$(CONTAINER_ENGINE) run --network none --rm --env BROADCOM_WL_APPLY_STAGING_PATCHES=1 broadcom-wl-$*

test: test-legacy test-mainline test-stable test-ubuntu-devel test-legacy-staging test-mainline-staging test-stable-staging test-ubuntu-devel-staging
