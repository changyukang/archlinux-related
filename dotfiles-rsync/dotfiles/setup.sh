#!/bin/sh  
#使用说明：恢复dotfiles软连接

# Shell相关
# zsh
ln -s ~/my-linux/dotfiles/zshrc ~/.zshrc
#如果使用了om-my-zsh的话
ln -s ~/my-linux/dotfiles/oh-my-zsh/ ~/.oh-my-zsh

# dir_colors, ls显示颜色, 部分设置在类.zshrc中
ln -s ~/my-linux/dotfiles/dir_colors ~/.dir_colors


# 软件相关
# vim
ln -s ~/my-linux/dotfiles/vimrc ~/.vimrc
ln -s ~/my-linux/dotfiles/vim ~/.vim

# exVim
ln -s ~/my-linux/dotfiles/ExVim/exVim ~/exVim
ln -s ~/my-linux/dotfiles/vim/my-sh-folder/run_exVim.sh /usr/bin/exVim

#spacemacs
#ln -s ~/my-linux/dotfiles/emacs.d/ ~/.emacs.d


# 系统相关
# xorg、xfce
ln -s ~/my-linux/dotfiles/xinitrc ~/.xinitrc
