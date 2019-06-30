#!/usr/bin/bash

if [ ! -d userdata ]; then
    echo "creating userdata"
    mkdir userdata
fi

for DIR in `find -mindepth 1 -maxdepth 1 -type d`
do
    echo "prefix: $DIR"
    cd $DIR
    if [ -d pfx ] && [ -f pfx.lock ]; then
        cd pfx/drive_c
        if [ -d users ] && [ ! -L users ]; then
            echo "creating symlink"
            cp -a users ../../../userdata
            rm -r users
            ln -s ../../../userdata/users users
        else
            echo "nothing to do"
        fi
        cd ../..
    else
        echo "not a proton prefix"
    fi
    cd ..
done


