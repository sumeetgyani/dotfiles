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
autoload -U promptinit; promptinit
prompt pure
export VISUAL=nvim
export EDITOR=nvim
export GG_GCP_USERNAME=sumeet
setopt HIST_IGNORE_ALL_DUPS

alias mdkir='mkdir'
alias c='clear'
alias ls='ls -lG'
alias ll='ls -lG'
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
alias gv='v $(git diff --name-only | fzf)'

# Plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sumeetgyani/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/sumeetgyani/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sumeetgyani/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/sumeetgyani/google-cloud-sdk/completion.zsh.inc'; fi

# Work specific commands
source ~/dotfiles/workrc

