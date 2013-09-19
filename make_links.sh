#!/usr/bin/env bash

mydir=$HOME/mkscript
bindir=$HOME/bin

if [[ ! -d "$bindir" ]]; then
    mkdir "$bindir"
fi

if [[ ! -e "$bindir/mkscript" ]]
then
    ln -v -s "$mydir/mkscript" "$bindir/mkscript"
fi

for file in $mydir/templates/*; do
    type=$(basename $file)
    if [[ ! -e "$bindir/mkscript.$type" ]]
    then
        ln -v -s "$mydir/mkscript" "$bindir/mkscript.$type"
    fi
done
