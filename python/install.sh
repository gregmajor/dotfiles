#!/bin/bash
#
# This installs the goodies AFTER Python 3 has been installed.

source $DOTHOME/lib/common

# Install pipenv
if which python3 > /dev/null 2>&1;
then
    pip3 install --user --isolated pipenv
else
    info "Cannot install pipenv since Python 3 is not installed yet"
fi