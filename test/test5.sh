#!/bin/bash
num=1
while [ $num -le 3 ]
do
num=`expr $num + 1`
echo $num
done