#!/bin/bash

set -e

echo compiling

go build -o ./bin/basic-dev-env.bin ./cmd/basic-dev-env/main.go

./scripts/test.sh 'local'
