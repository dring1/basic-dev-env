#!/bin/bash

source './scripts/console.sh'

# check for dep
dependencies=(
	go
	docker
	docker-compose
	shellcheck
)

info "Checking dependencies..."
for dep in "${dependencies[@]}"; do
	result=$(command -v "${dep}")
	if [ "${result}" == "" ]; then
		error "\tcould not find dependency: ${dep} "
		error "Make sure it is accesible in your \$PATH"
	fi
done

info "Installing githooks..."
$(cp -r ./scripts/console.sh .git/hooks/)
$(ln -s -f "${PWD}"/githooks/pre-commit .git/hooks/pre-commit)
result="${?}"

info "Installing golang binary packages..."
goDependencies=(
)
go get -u "${goDependencies[@]}"

curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s -- -b ${GOPATH}/bin v1.16.0

exit "${?}"
