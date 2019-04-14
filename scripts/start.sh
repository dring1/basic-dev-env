#!/bin/bash

set -e

source "./scripts/console.sh"

docker-compose -f build/docker-compose.yaml up -d
