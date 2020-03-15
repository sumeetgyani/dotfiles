# Antigen (package manager)
# =========================
source ~/antigen.zsh
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme blinks
antigen apply


# ALIASES
# =======

# Alter default behaviour
alias cp="cp -i"
alias ls='ls -la --color'

# Abbreviations
alias c='clear'
alias v='nvim'
alias ic='v ~/.config/i3/config'
alias nrc='v ~/.config/nvim/init.vim'
alias zrc='v ~/.zshrc'
alias szrc='source ~/.zshrc'
alias search='sudo pacman -Ss '
alias download='sudo pacman -S '
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gph='git push'
alias gpl='git pull'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'
