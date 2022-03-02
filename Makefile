#Dockerfile vars
REPO=jocas
IMAGENAME=dogenode
DOGECOIN_VERSION=1.14.5
DOCKER_NAME=dogenode
IMAGEFULLNAME=${REPO}/${IMAGENAME}:${DOGECOIN_VERSION}

.PHONY: help build run push all

help:
	    @echo "build"
	    @echo "run"
	    @echo "push"
	    @echo "all"

.DEFAULT_GOAL := all

build:
	    @docker build --pull --build-arg DOGECOIN_VERSION=${DOGECOIN_VERSION} -t ${IMAGEFULLNAME} .

push:
	    @docker push ${IMAGEFULLNAME}

run:
		@docker run --rm -d --name $(DOCKER_NAME) --network host -v ~/.dogecoin:/root/.dogecoin ${IMAGEFULLNAME}

stop:
		@docker stop $(DOCKER_NAME)

all: build push
