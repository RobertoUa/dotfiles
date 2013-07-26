export PATH=~/bin:/home/roberto/.cabal/bin:/usr/share/perl5/vendor_perl/auto/share/dist/Cope:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl:/opt/java/bin:/usr/bin/vendor_perl/
export BROWSER=firefox-nightly
export TERM=screen-256color
export PYTHONPATH=/usr/lib/python3.3/site-packages
export VBOX_USB=usbfs

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_FREE_MIN=500000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

alias sbl="sudo subl"
alias tmux="tmux -2"
alias sr="./bin/rails"
alias sake="spring rake"
alias sc="./bin/rails console"
alias sspec="spring rspec"
alias gst="git status"
bindkey -M viins "^R" history-incremental-search-backward
