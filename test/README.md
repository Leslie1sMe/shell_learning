#shell学习总结

####如何执行一个简单的shell脚本,我们先来写一个简单的shell程序

```
#!/bin/bash
#用#添加注释
echo helloworld
exit 0
```
这样就完成了一个最简单的shell程序，下面我们来执行一下

1. 首先赋予我们的脚本可执行权限chmod +x test.sh

2. 然后我们运行./test.sh

3. 输出结果 helloworld

#### shell变量
shell变量分为临时变量和全局变量
+ 临时变量：shell程序内部定义，使用范围仅限于使用定义它的程序，如x=3。
+ 永久变量：即为环境变量，其值不会随着脚本的执行结束而消失，如$PATH，$HOME,$PWD。

我们经常自己定义的变量，也就是用户定义变量，属于临时变量，由字母下划线开头，由数字字母下划线组成，
区分大小写，变量名长度无限制，举个例子变量X和变量x是两个不同的变量。

变量的赋值采用变量名'='变量值的方法，等号左右不用加空格，例：x=4.

还可以将一个命令的执行结果赋值给变量，例:
```bash
a = `date`
echo $a
```
或者
```bash
a = $(ls -al)
echo $a
```
可以通过变量和其他字符串组成一个新的字符串，例：
```bash
a = wocaca
echo $ab    //不输出，找不到变量ab
echo $a b   //输出a b
echo ${a}b  //输出ab
```
当我们想查看我们创建的变量的时候可以通过set命令。

当我们想给变量赋值多个单词的时候可以使用单引号或者双引号，例：
```bash
r="a b"   //双引号取消了空格的作用，特殊符号的含义保留。
或者
r = 'a b' //单引号之间的内容原封不断的指定给变量。
```

当我们想要删除变量的时候，只需要使用unset 变量值即可。

特殊变量：
```bash
$* //这个程序的所有参数
$# //这个程序的参数个数
$$ //当前程序的PID
$! //执行上一个后台程序的PID
$? //执行上一个指令的返回值
```
使用示例见test1.sh

read命令，从键盘上读取数据
```bash
read a
echo "读取到的值为 $a"
```
####shell命令

read

expr

test
+ test $str == $str1是否相等
+ test $str != $str1是否不等。
+ test $str 如果字符串不为空，返回true。
+ -n test -n $str如果字符串长度不为0，返回true。
+ -z test -z $str如果字符串长度为0，返回true。
eg:
```bash
x = abc
y = cba
if [ "$x" == "$y" ];then
  echo true
fi
```
测试数字：
+ -eq =
+ -gt >
+ -ge >=
+ -lt <
+ -le <=

例： test a1 -eq a2

测试文件：
+ test -d file //测试是否为目录
+ test -f file
+ test -x file
+ test -r file

+ test -w file
+ test -e file //测试文件是否存在
+ test -s file //测试大小是否为空文件

简写方式： test -x file ==> -x file

####流程控制语句

case 变量 in 
字符串1）命令列表1
;;
字符串2）命令列表2
;;
esac
示例代码见test3.sh

for 变量 in 名字表
do
...
done
```bash
for((a=0;a<10;a++)));do
echo $a
done
```
示例代码见test4.sh

while [条件]
do
...
done
示例代码见test5.sh

####双括号的使用
+ 在双括号结构中，所有的表达式可以像C语言一样使用a++，b--，a=a+1.
+ 在双括号结构中，所有的变量可以不加入"$"符号前缀。
+ 在双括号结构中，可以进行逻辑运算，四则运算。
+ 双括号结构扩展了for，while，if条件测试运算。
+ 支持多个表达式运算，各个表达式之间用"，"隔开。

示例代码见test6.sh

####循环嵌套
打印水仙花，示例代码见test7.sh

continue和break
示例代码见test8.sh

####shift命令的用法
每执行一次，参数序列顺次向左移动一个位置，$#的值减1，用于处理每个参数，移出去的参数
不可再用。

实现计算器，示例代码见test9.sh

####正则表达式
sed命令参数说明：
+ -e script 以选项中指定的script来处理输入的文本文件
+ -f script 以选项中指定的script文件来处理输入的文本文件
+ -n 仅显示scrpit处理后的结果

sed命令动作说明：

+ a\ 新增，a的后面可以接字符串，而这些字符串会在新的一行出现（当前的下一行）。
+ c\ 取代，c的后面可以接字符串，这些字串可以取代n1,n2之间的行。
+ d 删除，后面不接任何字符。
+ i\ 插入，i的后面可以接字串，这些字串会在新的一行出现（当前的上一行）。
+ p 打印，将某个选择的数据打印出来，通常p会和sed -n一起运行。
+ s 取代，可以直接进行取代的工作，通常搭配正则表达示。
   
示例代码见test10.sh

awk命令参数说明：

+ -F fs 指定输入文件分隔符，fs是一个字符串或者正则表达式。
+ -v var=value 赋值一个用户定义变量。
+ -f file 从脚本文件中读取awk命令

```bash
awk '{[pattern] action}' {filename}
```
示例代码见test11.sh