#!/bin/bash
set -x
while [ true ]
do
    read msg
    if [ $msg == "abc" ]
    then
        echo "输入正确"
        break
    elif [ $msg == 123 ]
    then
        echo "不允许输入123，请重新输入"
        continue
    else
        echo "输入错误，请重新输入"
    fi
done