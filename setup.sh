#!/bin/sh  
#使用说明：恢复dotfiles软连接

# Shell相关
# zsh
ln -s ~/my-linux/dotfiles/zshrc ~/.zshrc

# dir_colors, ls显示颜色, 部分设置在类.zshrc中
ln -s ~/my-linux/dotfiles/dir_colors ~/.dir_colors


# 软件相关
# vim
ln -s ~/my-linux/dotfiles/vimrc ~/.vimrc
ln -s ~/my-linux/dotfiles/vim ~/.vim


# 系统相关
# xorg、xfce
ln -s ~/my-linux/dotfiles/xinitrc ~/.xinitrc
