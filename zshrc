# Created by newuser for 5.0.8

# a. by kcy
# some more ls aliases
alias ls='ls --color=auto'

#由于上面ls已经支持颜色显示，下面只是使用ls进行的扩展，所以不需要再加color参数
alias ll='ls -l'    #列表形式
alias la='ls -A'    #不显示.和..
alias lla='ls -lA'  #列表形式不显示.和..
alias l='ls -CFhlt'    #文件和文件夹区分开
alias lA='ls -CFhltA'    #文件和文件夹区分开
alias lh='ls -hl'   #列表形式，以KB为单位显示文件大小
alias lht='ls -hlt' #同上，增加按时间排序

#ls终端solarized配色
export TERM=xterm-256color
eval `dircolors ~/.dir_colors/dircolors.256dark`
# e. by kcy

