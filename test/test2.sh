#!/bin/bash
#set -x
for ((x=1;x<=10;x++))
do
    for ((y=1;y<=10;y++))
    do
        var=$((x+y))
        if [ $var -eq 12 ]
        then
            break
        fi
	echo $var
        
    done
done
exit 0
