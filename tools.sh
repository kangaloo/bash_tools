#!/usr/bin/env bash

base=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)
source "${base}/lib/source_all.sh"
unset base

log::info "test log content"
log::warn "test log content"
log::error "test log content"
log::notice "test log content"
