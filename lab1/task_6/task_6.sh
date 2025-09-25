#!/bin/bash

grep -E "^\[[0-9\. ]+\] \((II|WW)" /var/log/Xorg.0.log | awk '{$1=$2=""; if ( $3 == "(II)" ) { $3="Information:" } else { $3="Warning:" }; print}' | sed 's/^.\{2\}//' | sort -rs -k1.1,1.1 > X_info_warn.log