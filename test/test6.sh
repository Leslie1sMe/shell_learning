#!/bin/bash
var=1
while((var<100))
do
echo $var
var=`expr $var \* 2`
done