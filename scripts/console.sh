#!/bin/bash

export RED='\033[0;31m'
export L_GREEN='\033[1;32m'
export L_BLUE='\033[1;34m'
export L_GREY='\033[0;37m'
export WHITE='\033[1;37m'
export BLUE='\033[0;34m'
export NC='\033[0m' # No Color

console() {
    local color=$1
    local msg=$2
    printf "${!color}${msg}${NC}\n"
}

error() {
    local msg=$1
    console 'RED' "${msg}"
}

info() {
    local msg=$1
    console 'L_GREEN' "${msg}"
}
