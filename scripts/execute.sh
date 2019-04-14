#!/bin/bash

# Ensure no zombied/lingering pids are arround

pids=$(pgrep basic-dev-env.bin)
[[ -z "${pids}" ]] || kill -9 "${pids}"

# execute the binary
./bin/basic-dev-env.bin
