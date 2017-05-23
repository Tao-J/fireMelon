export ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/firemelon/zsh-custom
#ZSH_THEME="robbyrussell"
ZSH_THEME="dstufft"
#ZSH_THEME="management"

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git emacs brew osx pip python zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8

alias em='emacs'

# OPAM configuration
# . $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
HOMEBREW_NO_AUTO_UPDATE=1

#export PATH="$HOME/.anaconda2/bin:$HOME/.cabal/bin:$HOME/.local/bin:/usr/local/texlive/2016/bin/x86_64-darwin:$PATH"
alias df='df -h'
alias du='du -h'

# Interactive operation...
# alias rm='rm -i'

alias rscp='rsync -aP'
alias bfg='java -jar $HOME/Downloads/bfg-1.12.8.jar'
