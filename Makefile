#Dockerfile vars
REPO=reponame
IMAGENAME=dogenode
DOGECOIN_VERSION=1.14.5
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
		@docker run -d --restart unless-stopped --name dogenode -v ~/.dogecoin:/root/.dogecoin ${IMAGEFULLNAME}

all: build push
