#!/usr/bin/env bash
set -eo pipefail

readonly required=( top  missing )

function info () {
    echo -e "[\e[34;1mINFO\e[0m] $@"
}

function error () {
    echo -e "[\e[31;1mERROR\e[0m] $@"
}

function success () {
    echo -e "[\e[32;1mPASS\e[0m] $@"
}

function failure () {
    echo -e "[\e[31;1mFAIL\e[0m] $@"
}

function check_required() {
    for cmd in "${required[@]}"; do
        command -v ${cmd} &>/dev/null \
            || ( error "command '${cmd}' not found: \
This script requires: ${required[@]}" \
                     && exit 1 )
    done
}

function main () {

    info '...'
    
}

check_required

main "$@"
