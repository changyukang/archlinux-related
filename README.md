# Archlinux-related
On the way

## Include
* dotfiles
* vimrc:vim
* exVim
* xinitrc
* dir_colors
* zshrc:oh-my-zsh

## Dotfiles
* 相关配置均使用dotfiles方式保存；
* 在dotfiles文件夹中增加脚本，一键恢复需要的链接到~目录。
![Dotfiles](http://7xoae4.com1.z0.glb.clouddn.com/dotfiles1.jpg)

## Vim
* 使用Vundle安装插件；
* 设置文本编码格式，在Windows下也可以正常保存为UTF-8格式，解析不乱码；
* 自编译Vim安装，支持Python2/Python3/Lua/Perl/Ruby以及Debug；
* 使用Vimgdb，在Vim中可以进行源码调试；
* 安装YCM，实现精确语义解析和语法补全；
* 已经集成其它插件，打造成IDE环境；
* 使用solarized主题。
![VIM IDE](http://7xoae4.com1.z0.glb.clouddn.com/VIM%20IDE1.jpg)

## exVim
* 安装exVim，与原来自定义Vim环境不冲突；
<<<<<<< Updated upstream
* 配置exVim为系统命令，可以通过exVim 的形式,一键打开exVim，并自动进入指定的工程目录；
=======
* 配置exVim为系统命令，可以通过exVim+*.exvim工程文件的形式,一键打开exVim，并自动进入指定的工程目录；
>>>>>>> Stashed changes
* 关闭exVim，即恢复系统配置，不影响原来自定义Vim环境的使用。
![exVim IDE](http://7xoae4.com1.z0.glb.clouddn.com/exVim1.jpg)

## Dir_colors
* 配置系统显示目录和文件时的颜色主题。
![Dir_colors](http://7xoae4.com1.z0.glb.clouddn.com/dir_colors2.jpg)

## Oh-my-zsh:
* 安装oh-my-zsh，自定义颜色主题配置，将路径信息显示在最右侧。
![Oh-my-zsh](http://7xoae4.com1.z0.glb.clouddn.com/oh-my-zsh1.jpg)

## Z
* 实现快速路径跳转。
![Z](http://7xoae4.com1.z0.glb.clouddn.com/Z1.jpg)
