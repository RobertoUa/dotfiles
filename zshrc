ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(history-substring-search dircycle fasd vi-mode git archlinux
        bundler coffee command-not-found gem git-extras github gnu-utils
        heroku history systemd rails3 rake ruby sublime zeus compleat cp
        colored-man rsync tmux)

alias sbl="sudo subl"
alias tmux="tmux -2"
alias sr="./bin/rails"
alias sake="spring rake"
alias sc="./bin/rails console"
alias sspec="spring rspec"

bindkey -M viins "^R" history-incremental-search-backward

export PATH=~/bin:/home/roberto/.cabal/bin:/usr/share/perl5/vendor_perl/auto/share/dist/Cope:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl:/opt/java6/jre/bin:/usr/bin/vendor_perl/
export VISUAL=vim
export EDITOR=vim
export BROWSER=firefox-nightly
export TERM=screen-256color
export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_AUTOCONNECT=false
export ZSH_TMUX_AUTOQUIT=true
export PYTHONPATH=/usr/lib/python3.3/site-packages

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/plugins/history-substring-search/history-substring-search.zsh

VBOX_USB=usbfs

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_FREE_MIN=500000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000
