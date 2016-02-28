#!/bin/sh  
#使用说明：恢复dotfiles软连接

DOTFILES_PATH=~/my-linux/dotfiles

# Shell相关
#1.zsh
ln -s $DOTFILES_PATH/zshrc ~/.zshrc

#2.如果使用了om-my-zsh的话
ln -s $DOTFILES_PATH/oh-my-zsh/ ~/.oh-my-zsh

#3.z的安装，直接在所用的shell配置文件中定位即可，不需将其链接到~目录
# 在zshrc中加入：source ~/my-linux/dotfiles/z/z.sh

#4.安装在虚拟终端下可以显示中文的fbterm
ln -s $DOTFILES_PATH/fbtermrc ~/.fbtermrc

#5.安装在虚拟终端下可以显示中文的fbterm所用的小小输入法
# 因为输入法不是通过包管理器安装，并且安装后有些配置修改，所以将程序文件一并备份
# 通过包管理器安装的并且程序安装目录内文件没有修改的，不必备份，只需备份配置文件
ln -s $DOTFILES_PATH/yong/ /usr/local/yong 
ln -s $DOTFILES_PATH/yong_config/ ~/.yong

#6.dir_colors, ls显示颜色, 部分设置在类.zshrc中
ln -s $DOTFILES_PATH/dir_colors ~/.dir_colors

#7.tmux设置
ln -s $DOTFILES_PATH/tmux.conf ~/.tmux.conf


# 软件相关
# vim
ln -s $DOTFILES_PATH/vimrc ~/.vimrc
ln -s $DOTFILES_PATH/vim ~/.vim

# exVim
ln -s $DOTFILES_PATH/ExVim/exVim ~/exVim
ln -s $DOTFILES_PATH/vim/my-sh-folder/run_exVim.sh /usr/bin/exVim

#spacemacs
#ln -s $DOTFILES_PATH/emacs.d/ ~/.emacs.d

#moc
ln -s $DOTFILES_PATH/moc/config ~/.moc/


# 系统相关
# xorg、xfce
ln -s $DOTFILES_PATH/xinitrc ~/.xinitrc
#ln -s $DOTFILES_PATH/xprofile ~/.xprofile
# xterm
ln -s $DOTFILES_PATH/Xresources ~/.Xresources
# awesome
mkdir -p ~/.config/awesome
ln -s $DOTFILES_PATH/rc.lua ~/.config/awesome/
