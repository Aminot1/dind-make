
USERNAME=aminmkh
CR_PAT= # https://github.com/settings/tokens
TAG=deploy

build:
	docker build . -t docker:$(TAG)
	docker tag docker:$(TAG) ghcr.io/$(USERNAME)/dind-make:$(TAG)

push:
	docker push ghcr.io/$(USERNAME)/dind-make:$(TAG)

login:
	echo $(CR_PAT) | docker login ghcr.io -u $(USERNAME) --password-stdin

pull:
	docker pull ghcr.io/$(USERNAME)/dind-make:$(TAG)
