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
cp $PWD/gitconfig $HOME/.gitconfig

