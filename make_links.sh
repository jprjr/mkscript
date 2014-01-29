#!/usr/bin/env bash

realpath_portable() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

mydir=$(dirname $(realpath_portable "$0"))
bindir=$HOME/bin

if [[ ! -d "$bindir" ]]; then
    mkdir "$bindir"
fi

ln -i -v -s "$mydir/mkscript" "$bindir/mkscript"

for file in $mydir/templates/*; do
    echo "$file"
    type=$(basename $file)
    ln -i -v -s "$mydir/mkscript" "$bindir/mkscript.$type"
done
