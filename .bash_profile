#!/bin/bash

source ~/.alias

genpasswd() {
        local l=$1
        [ "$l" == "" ] && l=20
        LC_CTYPE=C tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}