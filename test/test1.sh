#!/bin/bash
echo "这个程序的所有参数为 $*"
echo "这个程序的参数个数为 $#"
touch /path/test.python
echo "这个程序的进程id为 $$"
touch /path/test.python &
echo "执行上一个后台程序的pid为 $!"
