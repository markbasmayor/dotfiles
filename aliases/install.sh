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

if [ -n "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
   RUN_CMD='.zshrc'
elif [ -n "`$SHELL -c 'echo $BASH_VERSION'`" ]; then
   RUN_CMD='.bashrc'
fi

echo "Importing alias files... adding it to $HOME/$RUN_CMD."
echo "source $PWD/aliases" >> "$HOME/$RUN_CMD"

