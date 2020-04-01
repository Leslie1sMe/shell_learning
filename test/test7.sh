#!/bin/bash
read line
for ((i=1;i<=line;i++))
do
    for ((a=$line-$i;a>0;a--))
    do
        echo -n ' '
    done
    for ((b=1;b<=$((2*$i-1));b++))
    do
        echo -n '*'
    done
    echo
done