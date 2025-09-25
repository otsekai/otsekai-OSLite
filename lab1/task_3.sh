#!/bin/bash

width=$1
height=$2

let x=($width+1)/2
let y=($height+1)/2

stty -icanon -echo

while true;
do
    read -n 1 line

    case "$line" in 
        "w"|"W")
            let y=y+1
            ;;
        "a"|"A")
            let x=x-1
            ;;
        "s"|"S")
            let y=y-1
            ;;
        "d"|"D")
            let x=x+1
            ;;
        "q")
            echo "Game quit"
            break
            ;;
        *)
            echo "Please, hit only W, A, S, D buttons for move or q for quit"
            continue
            ;;
    esac

    if [[ $x -lt 1 || $x -gt $width || $y -lt 1 || $y -gt $height ]]
    then
        echo "Game over, bruh"
        break
    fi

    echo "x=$x; y=$y"
done

stty icanon echo