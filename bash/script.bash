#!/usr/bin/env bash
set -eo pipefail

function info () {
    echo -e "[\e[34;1mINFO\e[0m] $@"
}

function error () {
    echo -e "[\e[31;1mFAIL\e[0m] $@"
}

function success () {
    echo -e "[\e[32;1mPASS\e[0m] $@"
}

function failure () {
    echo -e "[\e[31;1mFAIL\e[0m] $@"
}


function main () {

    # ...
    
}

main "$@"
