#!/usr/bin/env sh
#this is a script to install zsh

apt-get install zsh git wget

chsh -s /bin/zsh

curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh

echo export EDITOR=/usr/bin/nvim >> ${ZDOTDIR:-$HOME}/.zshrc
######copy a local font file############
cp -r ./monaco-nerd-fonts-master /usr/share/fonts/


######install font tool#################
apt-get install ttf-mscorefonts-installeri

apt-get install font-manager

apt-get install dconf-editor

apt-get install fontconfig


#####install powerlevel69k theme#######
git clone https://github.com/bhilburn/powerlevel9k.git ${ZDOTDIR:-$HOME}/powerlevel9k

echo ZSH_THEME=\"~/powerlevel9k\" >> ${ZDOTDIR:-$HOME}/.zshrc
echo POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=\(dir vcs newline status\) >> ${ZDOTDIR:-$HOME}/.zshrc
echo POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=\(\) >> ${ZDOTDIR:-$HOME}/.zshrc
echo POWERLEVEL9K_PROMPT_ADD_NEWLINE=true >> ${ZDOTDIR:-$HOME}/.zshrc
echo POWERLEVEL9K_MODE=\'nerdfont-complete\' >> ${ZDOTDIR:-$HOME}/.zshrc
echo source ~/powerlevel9k/powerlevel9k.zsh-theme >> ${ZDOTDIR:-$HOME}/.zshrc

#####install plugins########

###autojump
apt-get install autojump

echo '[[ -s ~/.autojump/etc/profile.d/autojump.zsh ]] && . ~/.autojump/etc/profile.d/autojump.zsh' >> ${ZDOTDIR:-$HOME}/.zshrc
###syntax-hightlignting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-${ZDOTDIR:-$HOME}/.oh-my-zsh/custom}/plugins/zsh-syntax-highlt

echo plugins=(zsh-syntax-highlighting) >> ${ZDOTDIR:-$HOME}/.zshrc


git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

echo plugins=(zsh-autosuggestions) >> ${ZDOTDIR:-$HOME}/.zshrc

#source ${ZDOTDIR:-$HOME}/.zshrc


