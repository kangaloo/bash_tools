#!/usr/bin/env bash

# package log

LOG_VERBOSE=1

function log::info() {
    if [ ${LOG_VERBOSE} -eq 0 ]; then
        return 0
    fi
    color::white "$(date +%Y-%m-%dT%H:%M:%S) INFO ${BASH_SOURCE[1]}:${BASH_LINENO[0]} callers:[${FUNCNAME[@]:1}]" "$@"
    return 0
}

function log::warn() {
    color::yellow "$(date +%Y-%m-%dT%H:%M:%S) WARN ${BASH_SOURCE[1]}:${BASH_LINENO[0]} callers:[${FUNCNAME[@]:1}]" "$@"
    return 0
}

function log::error() {
    color::red "$(date +%Y-%m-%dT%H:%M:%S) ERROR ${BASH_SOURCE[1]}:${BASH_LINENO[0]} callers:[${FUNCNAME[@]:1}]" "$@"
    return 1
}

function log::notice() {
    color::blue "$(date +%Y-%m-%dT%H:%M:%S) NOTICE ${BASH_SOURCE[1]}:${BASH_LINENO[0]} callers:[${FUNCNAME[@]:1}]" "$@"
    return 0
}
