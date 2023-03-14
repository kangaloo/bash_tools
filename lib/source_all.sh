#!/usr/bin/env bash

lib_base=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)

for i in "${lib_base}"/*/*.sh; do
    source $i
done
unset lib_base
