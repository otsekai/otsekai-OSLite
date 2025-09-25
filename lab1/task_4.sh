#!/bin/bash

[ $PWD = $HOME ] && {
    echo $HOME
    exit 0
}
echo "ERROR: script is not running in the home dir" >&2
exit 1