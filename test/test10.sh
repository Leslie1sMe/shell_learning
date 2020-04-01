#!/bin/bash
#查看文件第5行数据
sed -n '5p' file.txt
#查看文件第2到第5行数据
sed -n '2,5p' file.txt
#在第三行后添加一个新的行aaaaaaaaa
sed -e '3a\aaaaaaaaa' file.txt
#在第三行前添加一个新的行aaaaaaaaa
sed -e '3i\aaaaaaaaa' file.txt
#删除文本中的第13行
sed -e '13d' file.txt
#将第3行改为aaaaaa
sed -e '3c\aaaaaa' ./file.text
#将第3至5行改为aaaaaa
sed -e '3,5c\aaaaaa' ./file.txt
#查看文件第4至最后1⃣行
sed -n '4,$p' ./file.txt
#删除文件第4至最后1⃣行
sed -e '4,$d' ./file.txt
#删除第三行到第五行，并把206全部替换成579
sed -e '3,5d'./file.txt|sed -e 's/a/b/' ./file.txt
#直接修改文件内容，请不要轻易尝试,好处是如果一个文件足够大， 你需要在文件的第100行加入一行代码，就不必通过vim打开就可以直接添加了
sed -i '13d' ./file.txt
