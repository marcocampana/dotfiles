export HISTFILESIZE=10000 # Record last 10,000 commands
export HISTSIZE=10000 # Record last 10,000 commands per session

export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1

# Ruby performance
export RUBY_HEAP_MIN_SLOTS=800000
export RUBY_HEAP_FREE_MIN=100000
export RUBY_HEAP_SLOTS_INCREMENT=300000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=79000000

alias ls='ls -G'
alias ..='cd ..'
alias l='ls -la'

alias pg='ps aux | grep'

alias m='mate'
alias s='subl'

# git aliases
alias g='git'
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'

alias gh='github'
alias gx='gitx'

# rails 2.x aliases
alias ss='script/server'
alias sc='script/console'
alias sdbc='script/dbconsole development -p'

# rails 3.x aliases
alias rs='rails s'
alias rs='rails s'
alias be='bundle exec'

# Rspec
alias r='rspec'
alias r.='rspec .'

alias colorslist="set | egrep 'COLOR_\w*'"

function gvim { /Applications/MacVim.app/Contents/MacOS/Vim -g $*; }

__parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

__ruby_version() {
  ruby -v|cut -f 2 -d ' '
}

function prompt_style {
  local BLUE="\[\033[3;36m\]"
  local YELLOW="\[\033[0;33m\]"
  local LIGHT_RED="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local WHITE="\[\033[0;37m\]"

  PS1="  $WHITE[\$(date +%H:%M:%S)] $YELLOW(ruby \$(__ruby_version))$YELLOW\n→ $BLUE\w $LIGHT_RED\$(__parse_git_branch)$WHITE "
}

prompt_style

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/Cellar/postgresql/9.0.1/bin:$PATH
export PGDATA=/usr/local/var/postgres
export PATH=~/.gem/ruby/1.8/bin:$PATH
export PATH=/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources:$PATH


export RBENV_ROOT=/usr/local/opt/rbenv

# rbenv - enable shims and autocompletion
eval "$(rbenv init -)"


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
