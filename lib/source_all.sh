#!/usr/bin/env bash

base=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)

for i in "${base}"/*/*.sh; do
    source $i
done
unset base
