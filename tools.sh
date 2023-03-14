#!/usr/bin/env bash

base=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)
source "${base}/lib/source_all.sh"

log::info "test log content"
log::warn "test log content"
log::error "test log content"
log::notice "test log content"
