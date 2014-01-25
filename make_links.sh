#!/usr/bin/env bash

mydir=$(dirname $(readlink -f $0))
bindir=$HOME/bin

if [[ ! -d "$bindir" ]]; then
    mkdir "$bindir"
fi

if [[ ! -e "$bindir/mkscript" ]]
then
    ln -v -s "$mydir/mkscript" "$bindir/mkscript"
fi

for file in $mydir/templates/*; do
    echo "$file"
    type=$(basename $file)
    if [[ ! -e "$bindir/mkscript.$type" ]]
    then
        ln -v -s "$mydir/mkscript" "$bindir/mkscript.$type"
    fi
done
