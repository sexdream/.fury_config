#!/usr/bin/env sh

apt-get install ranger
ranger --copy-config=all

#####install ccat
wget https://github.com/jingweno/ccat/releases/download/v1.1.0/linux-amd64-1.1.0.tar.gz
tar -xvf  linux-amd64-1.1.0.tar.gz
cp ./linux-amd64-1.1.0/ccat  /usr/bin/

####install fd
wget https://github.com/sharkdp/fd/releases/download/v7.3.0/fd-musl_7.3.0_amd64.deb
dpkg -i fd-musl_7.3.0_amd64.deb

#####install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ${ZDOTDIR:-$HOME}/.fzf
${ZDOTDIR:-$HOME}/.fzf/install


echo export FZF_DEFAULT_OPTS=\'--bind ctrl-j:down,ctrl-k:up --preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"\' >> ${ZDOTDIR:-$HOME}/.zshrc
echo export FZF_DEFAULT_COMMAND=\'fd --type f --hidden --follow --exclude .git . ~/.config /home / \' >> ${ZDOTDIR:-$HOME}/.zshrc
echo export FZF_COMPLETION_TRIGGER=\'\\\' >> ${ZDOTDIR:-$HOME}/.zshrc
echo export FZF_PREVIEW_COMMAND=\'[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500\' >> ${ZDOTDIR:-$HOME}/.zshrc

mv ${ZDOTDIR:-$HOME}/.config/ranger/rc.conf ${ZDOTDIR:-$HOME}/.config/ranger/rc_bak.conf

cp ./rc.conf ${ZDOTDIR:-$HOME}/.config/ranger/
cp ./commands.py ${ZDOTDIR:-$HOME}/.config/ranger/
