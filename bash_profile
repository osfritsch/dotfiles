### PATHS ###
export GEM_HOME=${HOME}/.gem/ruby/1.8
export GEM_PATH=${HOME}/.gem/ruby/1.8
export PATH=$PATH:${HOME}/.gem/ruby/1.8/bin
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:~/.rbenv/bin

### ALIASES ###
alias vi=vim
alias ls='ls -G'
alias l='ls'
alias grep='grep --color=auto'
alias gti='git'
alias ..='cd ..'
alias sihl='cd /Users/ofritsch/projects/customers/sihl/'
alias obi='cd /Users/ofritsch/projects/customers/obi/obi-migration-germany/'
alias rails_connector='cd /Users/ofritsch/projects/ip/products/rails_connector/'
alias shell='ssh -A shell'
alias license='cd ~/projects/ip/products/licenses'
alias sshconfigs='cat ~/.ssh/config_* > ~/.ssh/config'

# MPG Krams
export 'MPG_LOCAL_DEV_RAILS_RELATIVE_URL_ROOT'="/mpg"
alias mpi='cd ~/projects/customers/mpg/mpg-institute/rails-app'
alias mpg='cd ~/projects/customers/mpg/main/mpg-app'
alias mpgdown='VBoxManage controlvm SLESMPG savestate'
alias mpgup='nohup VBoxHeadless -s SLESMPG &'



### rbenv init
eval "$(rbenv init -)"

### Git Branches ###
#Anzeige für Branch im Terminal nach Ordnernamen
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
local RED="\[\033[0;31m\]"
local GREEN="\[\033[0;32m\]"
local YELLOW="\[\033[0;33m\]"
local WHITE="\[\033[1;37m\]"
PS1="\033[1;37m\](\t)\033[0;31m\][\h]\[\033[0;37m\]:\[\033[0;32m\]\w \[\033[0;33m\]\$(parse_git_branch)\[\033[0;37m\]\n∴ "
PS2='> '
PS4='+ '
}
proml

# rake zeugs
function rake {
  if [ -e "Gemfile" ]; then
	  bundle exec rake $@
  else `which rake`$@
	fi
}

# Bash Completion via Brew
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

#source `brew --prefix git`/usr/local/etc/bash_completion.d/brew_bash_completion.sh

# prompt with ruby version
# rbenv version | sed -e 's/ .*//'
__rbenv_ps1 ()
{
  rbenv_ruby_version=`rbenv version | sed -e 's/ .*//'`
  printf $rbenv_ruby_version
}
