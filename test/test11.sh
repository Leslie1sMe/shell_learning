#!/bin/bash
#查看文件的第1项和第3项
awk '{print $1.$3}' ./file.txt
#使用-F，相当于内置变量FS，指定分隔符
awk -F, '{print $1,$3}' ./file.txt
#设置变量
awk -F':' -va=1 -vb=2 '{print $1+a,$1+b}' ./file.txt
#又如
awk -va=1 -vb=2 '{print $(2+a),$(1+b)}' ./file.txt
#过滤第第一列大于2并且第二列等于matt的行
awk '$1>2&& $2="matt" {print $1,$2,$3}' ./file.txt
#匹配正则表达式,~表示模式开始，//中是模式
awk '$1 ~ /a/ {print $1,$2}' ./file.txt
#awk的数组
awk 'BEGIN {words["a"]="a";words["b"]="b";print words["a"] "\n"words["b"]}'
#删除awk的数组元素
awk 'BEGIN{words["a"]="a";words["b"]="b"; delete words["a"]; print words["a"]}'
#awk的条件语句和循环
awk 'BEGIN{n=10;if(n%2==0) printf("%d是偶数",n)}'
#for循环
awk 'BEGIN{for(n=0;n<10;n++) print n}'
