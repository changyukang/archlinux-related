#!/bin/sh

#打开vim时先删除.vimrc软链接
rm -f ~/.vimrc

#重新链接一个.vimrc到exVim
ln -s ~/my-linux/dotfiles/ExVim/exVimrc ~/.vimrc

#运行exVim,工程.exvim文件作为参数传入
project_path=$1
gvim ${project_path}

#经过上面操作，vim加载时使用打已经时exVim的vimrc文件了
#下面要做的是，vim关闭时，替换回原来的vimrc，使环境不受exVim影响
#这个操作在~/my-linux/dotfiles/ExVim/.vimrc中进行，利用autocmd VimLeave

