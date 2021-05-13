# zsh base 版本的注意事项
 1. 安装Powerlevel9k主题，或者是后面ranger的安装都是需要安装字体的
    在https://github.com/ryanoasis/nerd-fonts/releases下载字体并用Font Manager安装
    Dconf Editor中找到/org/gnome/terminal/legacy/profiles:/hashcode/font 修改终端字体为需要的字体 + 字体大小
 2. 安装ruby的时候不要使用apt-get的方式，要使用源码编译的方式

    下载安装包 wget https://cache.ruby-lang.org/pub/ruby/2.4/ruby-2.4.5.tar.gz(找到最新的稳定版本)
    解压文件 tar -xzvf ruby2.4.5
    编译 ./configure
    安装 make && make install