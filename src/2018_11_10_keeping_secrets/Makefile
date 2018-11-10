
all: build-dottie build-jenkins build-volume

build-volume:
	docker volume create --name gpg-presentation

build-jenkins:
	docker build -f ./Dockerfile.jenkins -t mkrotscheck/2018_11_10_keeping_secrets:jenkins .

build-dottie:
	docker build -f ./Dockerfile -t mkrotscheck/2018_11_10_keeping_secrets:dottie .

run-dottie: build-volume build-dottie
	docker run -it -v gpg-presentation:/shared mkrotscheck/2018_11_10_keeping_secrets:dottie

run-jenkins: build-volume build-jenkins
	docker run -it -v gpg-presentation:/shared mkrotscheck/2018_11_10_keeping_secrets:jenkins

clean:
	docker container prune -f
#	docker image prune -f
	docker volume prune -f

clean-all:
	docker container prune -f
	docker rmi mkrotscheck/2018_11_10_keeping_secrets:dottie
	docker rmi mkrotscheck/2018_11_10_keeping_secrets:jenkins
	docker image prune -f
	docker volume prune -f
