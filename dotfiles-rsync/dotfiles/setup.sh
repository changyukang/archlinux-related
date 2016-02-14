#!/bin/sh  
#使用说明：恢复dotfiles软连接

# Shell相关
#1.zsh
ln -s ~/my-linux/dotfiles/zshrc ~/.zshrc

#2.如果使用了om-my-zsh的话
ln -s ~/my-linux/dotfiles/oh-my-zsh/ ~/.oh-my-zsh

#3.z的安装，直接在所用的shell配置文件中定位即可，不需将其链接到~目录
# 在zshrc中加入：source ~/my-linux/dotfiles/z/z.sh

#4.安装在虚拟终端下可以显示中文的fbterm
ln -s ~/my-linux/dotfiles/fbtermrc ~/.fbtermrc

#5.安装在虚拟终端下可以显示中文的fbterm所用的小小输入法
# 因为输入法不是通过包管理器安装，并且安装后有些配置修改，所以将程序文件一并备份
# 通过包管理器安装的并且程序安装目录内文件没有修改的，不必备份，只需备份配置文件
ln -s ~/my-linux/dotfiles/yong/ /usr/local/yong 
ln -s ~/my-linux/dotfiles/yong_config/ ~/.yong

#6.dir_colors, ls显示颜色, 部分设置在类.zshrc中
ln -s ~/my-linux/dotfiles/dir_colors ~/.dir_colors

#7.tmux设置
ln -s ~/my-linux/dotfiles/tmux.conf ~/.tmux.conf


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
ln -s ~/my-linux/dotfiles/xprofile ~/.xprofile
# xterm
ln -s ~/my-linux/dotfiles/Xresources ~/.Xresources
# awesome
cd ~/.config
mkdir awesome
ln -s ~/my-linux/dotfiles/rc.lua ~/.config/awesome/
