#!/usr/bin/env bash
# update-git-repos.bash

CWD=`pwd`

for repo in `ls -d */ | cut -f1 -d'/'`
  do
    cd "${repo}"
    git pull
    cd $CWD
  done
