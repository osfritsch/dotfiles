### SOURCES
source '~/dotfiles/projects';
source '~/dotfiles/aliases'

### PATHS ###
export GEM_HOME=${HOME}/.gem/ruby/1.8
export GEM_PATH=${HOME}/.gem/ruby/1.8
export PATH=$PATH:${HOME}/.gem/ruby/1.8/bin
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:~/.rbenv/bin

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

__rbenv_ps1 ()
{
  rbenv_ruby_version=`rbenv version | sed -e 's/ .*//'`
  printf $rbenv_ruby_version
}
