#!/bin/bash

set -e

source "./scripts/console.sh"

VERSION=latest

ENV="${ENVIRONMENT}"
[[ -z "${ENV}" ]] && ENV="DEVELOPMENT"
ENV=$(echo "${ENV}" | tr '[:upper:]' '[:lower:]')

info "Building with git sha ${VERSION}"

TAG="basic-dev-env:${VERSION}"
docker build -f build/Dockerfile."${ENV}" -t "${TAG}" .
info "Tagged ${TAG}"
