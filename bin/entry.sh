#!/bin/bash

set -o pipefail

CompileDaemon -build='./scripts/compile.sh' -color=true -command='./scripts/execute.sh' 2>&1
