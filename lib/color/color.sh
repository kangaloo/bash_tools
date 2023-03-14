#!/usr/bin/env bash

# package color

function color::green() {
    local str="$@"
    echo -e "\e[32m${str}\e[0m"
}

function color::yellow() {
    local str="$@"
    echo -e "\e[33m${str}\e[0m"
}

function color::red() {
    local str="$@"
    echo -e "\e[31m${str}\e[0m"
}

function color::purple() {
    local str="$@"
    echo -e "\e[35m${str}\e[0m"
}

function color::blue() {
    local str="$@"
    echo -e "\e[36m${str}\e[0m"
}

function color::white() {
    echo -e "$@"
}
