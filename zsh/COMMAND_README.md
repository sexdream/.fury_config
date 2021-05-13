# zsh使用说明
## alias 插件使用
alias插件是zsh自带的插件，直接运行alias可以查看整个shell中所有配置了alias的命令，其中有非常多的是属于git插件配置的git命令的，但是有一些非常常用并且好用的命令如下：
-='cd -'
...=../..
....=../../..
.....=../../../..
......=../../../../..
1='cd -'
2='cd -2'
3='cd -3'
4='cd -4'
5='cd -5'
6='cd -6'
7='cd -7'
8='cd -8'
9='cd -9'
g=git
l='ls -lah'
md='mkdir -p'
x=extract

## extract 插件
extract插件是解压缩的工具，完全不需要像tar一样加各种不同的压缩格式参数。并且上述可以看到有x的alias命令

## d 路径跳转历史查看插件
d命令可以查看当前这个shell的历史路径有哪些，然后就可以使用对应的数字进行对应的跳转，其实也就是alias中的数字

## autojump 路径自由跳转插件
j命令可以后面接上目录的名称直接完成路径跳转，非常的方便：如 
 j nvim
/home/tim_val/.config/nvim

## sudo 补全插件
双击esc可以把上次的命令加上sudo

## 命令历史查找
在oh my zsh中，不需要使用ctrl + r 进行命令查找，直接使用UP DOWN就可以命令查找，并且还支持前缀补充
例如想要在git s中查找git status的命令记录就可以
git s + UP
git status

## 命令自动补齐插件
可以配合zsh-autosuggestions.zsh和zsh-syntax-highlighting.git完成自动的命令补齐，只需要在出现正确的命令以后使用RIGHT


