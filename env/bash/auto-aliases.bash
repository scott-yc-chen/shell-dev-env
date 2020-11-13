#!/bin/bash

export MY_DEV_PATH=$HOME/workspace
export MY_VIRTUALENV_PATH=$HOME/.virtualenv

if [[ `uname` = 'Linux' ]]; then
    export PROFILE='~/.bashrc'
else # Darwin
    export PROFILE='~/.bash_profile'
fi

# Create dynamic aliases
if [ -d ${MY_DEV_PATH} ]; then
    for folder in $MY_DEV_PATH/*; do
        alias cd-`basename $folder`="cd $folder"
    done
fi

if [ -d ${MY_VIRTUALENV_PATH} ]; then
    FIND=/usr/bin/find
    INSTANCES=`${FIND} $MY_VIRTUALENV_PATH -mindepth 1 -maxdepth 1 -type d`
    if [ ! -z "${INSTANCES}" ]; then
        for item in ${INSTANCES[@]}; do
            item=${item##*/}
            activate="${MY_VIRTUALENV_PATH}/${item}/bin/activate"
            alias so-$item=". $activate"
            #alias 2${item}="cd ${MY_DEV_PATH}/${item}; so-${item}"
        done
        unset item activate
    fi
    unset FIND INSTANCES
fi
