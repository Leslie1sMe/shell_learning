#!/bin/bash
echo 计算器
if [ $# -le 0 ]
then
    echo "不合法"
fi
res=0
while [ $# -ge 1 ]
do
    res=`expr $res + $1`
shift
done
echo $res
