## install: git hooks, go binaries, dependency checks
install:
	@bash -c "./scripts/install.sh"

## start: start development environment
start: stop build
	@bash -c "./scripts/start.sh"

## stop: stop development environment
stop:
	@bash -c "./scripts/stop.sh"

## test: run test suite, to run on local host system; make test local
test:
	@bash -c "./scripts/test.sh" $@

## build: build docker containers
build:
	@bash -c "./scripts/build.sh"

## logs: logging all services, will tail output
logs:
	@bash -c "./scripts/logs.sh"

## attach: attach to the running container 
attach:
	@bash -c "./scripts/attach.sh"

## lint: run linters against code boase
lint:
	@bash -c "./scripts/lint.sh"
