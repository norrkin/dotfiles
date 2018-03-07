#!/bin/bash

source ~/.alias

# generate 20 character length password
genpasswd() {
        local l=$1
        [ "$l" == "" ] && l=20
        LC_CTYPE=C tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}

export CLICOLOR=1
