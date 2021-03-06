#!/bin/sh
#写在前面：
#1. archlinux-related库中所有文件均使用submodule方式管理，所以clone后需要git submodule update --init --recursive, 加recursive是因为有些子模组中还含有子模组。
#2. 当前vim插件中只有winmanager有修改，个性化nerdtree和taglist的窗口布局;另外youcompleteme需要编译;vimgdb需要打补丁，且需要编vim使其支持gdb，现在已经用pyclewn代替。
#3. oh-my-zsh有关于主题wezm+的修改，只是库已经fork，所以git submodule update之后得到的就是包含修改的;对于youcomplete，其中包含了编译后的clang.so，这个没有提交，所以在本地电脑git clone并且git submodule update --init --recursive得到的不包含它，需要拷贝过来，或者重新编译ycm,其它电脑上必须重新编译ycm。
#3. archlinux-related是个库，里面以submodule管理了插件，而实际使用时是在~/my-linux，为了保持这个目录跟archlinux-related一致，所以应该在添加插件时在archlinux-related目录通过子模组添加，然后修改vimrc，之后同步到~/my-linux，此时不能通过BundleIinstall更新插件，因为插件是子模组，所以库信息保存在archlinux-related目录中。
#   所以添加插件的操作是:在archlinux-related目录添加插件为子模组，并修改vimrc，之后通过.zshrc中定义的同步命令同步到~/my-linux。
#   删除插件的方法是:在~/my-linux可以通过BundleClean删除插件，并需要在archlinux-related中将插件的子模组信息删除。
#   更新插件的方法是:在archlinux-related中通过git submodule update --recursive更新子模组，并同步到~/my-linux。

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
#git
ln -s $DOTFILES_PATH/gitconfig ~/.gitconfig

# vim
ln -s $DOTFILES_PATH/vimrc ~/.vimrc
ln -s $DOTFILES_PATH/vim ~/.vim

# exVim
ln -s $DOTFILES_PATH/ExVim/exVim ~/exVim
ln -s $DOTFILES_PATH/vim/my-sh-folder/run_exVim.sh /usr/bin/exVim

#spacemacs
#ln -s $DOTFILES_PATH/emacs.d/ ~/.emacs.d

#moc
ln -s $DOTFILES_PATH/moc/config ~/.moc/config


# 系统相关
# xorg、xfce
ln -s $DOTFILES_PATH/xinitrc ~/.xinitrc
#ln -s $DOTFILES_PATH/xprofile ~/.xprofile
# xterm
ln -s $DOTFILES_PATH/Xresources ~/.Xresources
# awesome
mkdir -p ~/.config/awesome
ln -s $DOTFILES_PATH/rc.lua ~/.config/awesome/
