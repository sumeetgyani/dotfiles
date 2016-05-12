# ==============================================
# distro defaults with some slight modifications
# ==============================================

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

xhost +local:root > /dev/null 2>&1

complete -cf sudo

shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases
shopt -s extglob
shopt -s histappend
shopt -s hostcomplete

export HISTSIZE=10000
export HISTFILESIZE=${HISTSIZE}
export HISTCONTROL=ignoreboth
export JAVA_FONTS=/usr/share/fonts/TTF
export EDITOR=/usr/bin/vim
export BROWSER=/usr/bin/palemoon

alias ls='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -A'
alias grep='grep --color=tty -d skip'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='vim PKGBUILD'
alias fixit='sudo rm -f /var/lib/pacman/db.lck'
alias update='yaourt -Syua'
alias comp='vim $HOME/.config/compton.conf'
alias inst='sudo pacman -S'
alias mirrors='sudo pacman-mirrors -g'
alias db='sudo pacman -Syy'

# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# prompt
PS1=' '

# =========
# my stuff
# =========

function mt {
  if [ -n "$1" ]; then
    cd $1
    if [ $? -eq 0 ]; then
      clear
      ls
    fi
  else
    echo 'usage: mt [directory]'
  fi
}

export PATH="$PATH:/home/bolshoi/scripts"
set -o vi
setxkbmap -option caps:escape

alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gd='git diff'
alias c='clear'
alias hack='cmatrix'
alias vi='vim'
alias fm='vifm'
alias con='vim ~/.i3/config'
alias brc='vim ~/.bashrc'
alias vrc='vim ~/.vimrc'
alias fmrc='vim ~/dotfiles/vifmrc'
alias notes='mt ~/notes/'
alias dotfiles='mt ~/dotfiles/'
alias scripts='mt ~/scripts/'
alias mean='mt ~/projects/mean-demo/'
