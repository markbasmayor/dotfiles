#!/bin/bash

### env
BASH_ALIASES_FILE=~/.bash_aliases
GITCONFIG_FILE=~/.gitconfig
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
echo "installing dotfiles in: $PWD ..."

#backup exists file/dir

echo "creating backup ..."

for f in $BASH_ALIASES_FILE $GITCONFIG_FILE; do
    if [ -e "$f" ]; then
        if [ -e "${f}_bak" ]; then
            rm -rf ${f}_bak || error "Can't remove exists backup file: ${f}_bak"
        fi
        mv $f ${f}_bak || error "Can't rename exists file: $f"
    fi
done

# link the files
echo "Create symbolic links ..."
ln -sf $PWD/bash_aliases $BASH_ALIASES_FILE
ln -sf $PWD/gitconfig $GITCONFIG_FILE
