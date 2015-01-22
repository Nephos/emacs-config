#!/bin/bash

git fetch

if [ `git rev-list HEAD...$(git rev-parse --abbrev-ref --symbolic-full-name @{u}) --count` != 0 ]
then
    git pull && ./install && echo 'Please restart emacs to apply changes'
else
    echo 'Already up to date'
fi
