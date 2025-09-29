#!/usr/bin/env bash

base=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)
source "${base}/lib/source_all.sh"
unset base

function help() {
    local script_name
    script_name=$(basename "${BASH_SOURCE[0]}")
    cat <<USAGE
Usage: ${script_name} <command>

Commands:
  demo        Show sample log outputs.
  help        Show this message.
USAGE
}

function demo() {
    log::info "test log content"
    log::warn "test log content"
    log::error "test log content"
    log::notice "test log content"
}

if [ $# -eq 0 ]; then
    help
    exit 0
fi

case "$1" in
    demo)
        demo
        ;;
    help|-h|--help)
        help
        ;;
    *)
        log::error "unknown command: $1"
        help
        exit 1
        ;;
esac
