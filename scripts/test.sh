#!/bin/bash

set -e

source './scripts/console.sh'

if [ "${1}" == "local" ]; then
    go test -v -timeout 30s ./...
else
    # called from host filesystem, propogate to docker fs.
    info " Executing tests in application container..."
    docker exec build_basic-dev-env_1 bash -c './scripts/test.sh local'
fi
