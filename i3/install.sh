#!/bin/bash

### env
PWD=`pwd`

### functions
warn() {
    echo "WARNING: $1" >&2
}

error() {
    echo "ERROR: $1" >&2
    exit 1
}

### begin
#cp $PWD/../i3 $HOME/.i3 -R
ln -sf $PWD $HOME/.i3

