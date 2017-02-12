# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/sumeetgyani/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# My stuff
export VISUAL=nvim
export EDITOR=nvim

alias mdkir='mkdir'
alias c='clear'
alias ls='ls -lG'
alias v='nvim'
alias hack='cmatrix'
alias notes='cd ~/notes'
alias dotfiles='cd ~/dotfiles'
alias zrc='nvim ~/.zshrc'
alias nrc='nvim ~/.config/nvim/init.vim'

alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gph='git push'
alias gpl='git pull'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'
alias gr='git reset HEAD'
alias grm='git rm'

# Work stuff
export SV_DEV_USERNAME=sumeet
export SV_REMOTE_HOME=/home/sumeet/repos
export SV_HOME=/Users/sumeetgyani/development
export SV_KEY_DIR=$HOME/keypairs
export PATH=$HOME/pear/bin:$PATH
export PATH=$SV_HOME/gg-api/ops/docker/bin:$PATH
export PATH=$SV_HOME/gg-api/ops/docker/hhvm/bin:$PATH

API=$SV_HOME/gg-api
WEB=$SV_HOME/gg-web
METV=$SV_HOME/metv-common

alias hosts='nvim /etc/hosts'
alias tags='ctags -R --exclude=.git --exclude=node_modules --exclude=bower_components --exclude=vendor .'
alias serve='grunt server'
alias dev='ssh sumeet@dev.metv.bz'
alias sync='gg-repo-sync'
alias develop='git checkout develop'
alias home='cd $SV_HOME'
alias api='cd $API'
alias web='cd $WEB'
alias metv='cd $METV'
alias admin='cd $WEB; cd admin'
alias apis='api; nvim src/Entity/ContainerTag/DAO.class.php'
alias webs='web; nvim common/app/components/forms/ValidatingForm.jsx'
# grunt deploy-beanstalk:staging:react-v15-sumeet

# Plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

