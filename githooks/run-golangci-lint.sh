#!/usr/bin/env bash

exec "${GOPATH}/bin/golangci-lint" -c "$(dirname "$0")/.golangci.yml" run