.PHONY: build

CCLI := podman
CTAG := noahhuppert/particle-cli:latest

# build container
build:
	${CCLI} build -t ${CTAG} .
