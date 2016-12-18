set --export SV_DEV_USERNAME "sumeet"
set --export SV_REMOTE_HOME "/home/sumeet/repos"
set --export SV_HOME "/Users/sumeetgyani/development"
set --export SV_KEY_DIR "$HOME/keypairs"
set --export PATH "$HOME/pear/bin" $PATH
set --export PATH "$SV_HOME/gg-api/ops/docker/bin" $PATH
set --export PATH "$SV_HOME/gg-api/ops/docker/hhvm/bin" $PATH

set API "$SV_HOME/gg-api"
set WEB "$SV_HOME/gg-web"
set METV "$SV_HOME/metv-common"

fish_vi_key_bindings

alias c 'clear'
alias ls 'ls -lG'
alias v 'nvim'
alias hosts 'nvim /etc/hosts'

alias frc='nvim ~/dotfiles/config.fish'
alias nrc='nvim ~/.config/nvim/init.vim'

alias tags 'ctags -R --exclude=.git --exclude=node_modules --exclude=bower_components --exclude=vendor .'
alias sync 'api; gg-repo-sync'
alias serve 'sync; cd -; grunt server'
alias hack 'cmatrix'
alias dev 'ssh sumeet@dev.metv.bz'
alias develop 'git checkout develop'

function !!
	eval sudo $history[1]
end

function both
	eval $argv
	if [ $PWD = $WEB ]
		cd $API
	else
		cd $WEB
	end
	eval $argv
	cd -
end

alias notes 'cd ~/notes'
alias dotfiles 'cd ~/dotfiles'
alias api 'cd $API'
alias web 'cd $WEB'
alias metv 'cd $METV'
alias admin 'cd $WEB; cd admin'
alias apis 'api; nvim src/Entity/ContainerTag/DAO.class.php'
alias webs 'web; nvim common/app/components/forms/ValidatingForm.jsx'
alias script 'api; nvim tests/unit/RunScriptCest.php'

alias gs 'git status'
alias ga 'git add'
alias gc 'git commit -m'
alias gph 'git push'
alias gpl 'git pull'
alias gd 'git diff'
alias gb 'git branch'
alias gco 'git checkout'
alias gr 'git reset HEAD'
