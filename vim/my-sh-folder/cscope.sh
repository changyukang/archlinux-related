#!/bin/sh  
#使用说明：该脚本存放在.vim中，方便与vim插件一起备份，使用时可以在项目代码根目录（顶层目录）中,
#通过绝对路径执行该脚本，会自动在运行脚本时的项目目录中生成cscope.out和tags等文件，配合.vimrc中打配置，
#自动加载cscope.out

#下面这种方式有问题，执行cscope -bkq时不会把扫描到打文件写入cscope.files
#find . -name "*.h" -o -name "*.c" -o -name "*.cpp" -o -name "*.java"\  
#        >cscope.files  
#需要修改成下面的形式
find . -name "*.h" -o -name "*.c" -o -name "*.cpp" -o -name "*.java"  >cscope.files  

cscope -bkq -i cscope.files  
ctags -R  
