set --export SV_DEV_USERNAME "sumeet"
set --export SV_REMOTE_HOME "/home/sumeet/repos"
set --export SV_HOME "/Users/sumeetgyani/development"
set --export SV_KEY_DIR "$HOME/keypairs"
set --export PATH "$HOME/pear/bin" $PATH
set --export PATH "$SV_HOME/gg-api/ops/docker/bin" $PATH

set API "$SV_HOME/gg-api"
set WEB "$SV_HOME/gg-web"
set METV "$SV_HOME/metv-common"

fish_vi_key_bindings

abbr --add c 'clear'
abbr --add ls 'ls -lG'
abbr --add v 'nvim'

abbr --add frc='nvim ~/.config/fish/config.fish'
abbr --add nrc='nvim ~/.config/nvim/init.vim'

abbr --add tags 'ctags -R --exclude=.git --exclude=node_modules --exclude=bower_components --exclude=vendor .'
abbr --add sync 'api; gg-repo-sync'
abbr --add serve 'sync; cd -; grunt server'
abbr --add hack 'cmatrix'
abbr --add dev 'ssh sumeet@dev.metv.bz'

function develop
	git checkout develop
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

abbr --add notes 'cd ~/notes'
abbr --add dotfiles 'cd ~/dotfiles'
abbr --add api 'cd $API'
abbr --add web 'cd $WEB'
abbr --add metv 'cd $METV'
abbr --add admin 'cd $WEB; cd admin'
abbr --add apis 'api; v src/Entity/ContainerTag/DAO.class.php'
abbr --add webs 'web; v common/app/components/forms/ValidatingForm.jsx'
abbr --add script 'api; v tests/unit/RunScriptCest.php'

abbr --add gs 'git status'
abbr --add ga 'git add'
abbr --add gc 'git commit -m'
abbr --add gph 'git push'
abbr --add gpl 'git pull'
abbr --add gd 'git diff'
abbr --add gb 'git branch'
abbr --add gco 'git checkout'
abbr --add gr 'git reset HEAD'
