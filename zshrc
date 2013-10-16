export PATH=~/bin:/home/roberto/.cabal/bin:/usr/share/perl5/vendor_perl/auto/share/dist/Cope:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl:/opt/java6/bin:/usr/bin/vendor_perl/:~/Documents/Libraries/play-2.0.4
export BROWSER=google-chrome-unstable
export TERM=screen-256color
#export PYTHONPATH=/usr/lib/python3.3/site-packages
export VBOX_USB=usbfs
export M2_HOME=/opt/maven
export JAVA_HOME=/opt/java6
#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd'
#export JAVA_FONTS=/usr/share/fonts/TTF

export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_FREE_MIN=500000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000

#export vblank_mode=0
source "${ZDOTDIR:-$HOME}/.archlinux.zsh"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

source ~/mvncolor.sh

alias sbl="sudo subl"
alias tmux="tmux -2"
alias sr="./bin/rails"
alias sake="spring rake"
alias sc="./bin/rails console"
alias sspec="spring rspec"
alias gst="git status"
alias rm="nocorrect trash"
bindkey "^X" _expand_alias # ctrl+x to expand alias
alias r="ranger"


export KEYTIMEOUT=1 # sets delay for vi mode to 0.1 sec
# Use vim cli mode
bindkey '^P' up-history
bindkey '^N' down-history

# ctrl-w removed word backwards
bindkey '^w' backward-kill-word

# ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward

xdg-mime default google-chrome.desktop x-scheme-handler/http
xdg-mime default google-chrome.desktop x-scheme-handler/https

xdg-mime default google-chrome.desktop x-scheme-handler/http
xdg-mime default google-chrome.desktop x-scheme-handler/https
xdg-mime default google-chrome.desktop x-scheme-handler/ftp
xdg-mime default google-chrome.desktop x-scheme-handler/chrome
xdg-mime default google-chrome.desktop text/html
xdg-mime default google-chrome.desktop application/x-extension-htm
xdg-mime default google-chrome.desktop application/x-extension-html
xdg-mime default google-chrome.desktop application/x-extension-shtml
xdg-mime default google-chrome.desktop application/xhtml+xml
xdg-mime default google-chrome.desktop application/x-extension-xhtml
xdg-mime default google-chrome.desktop application/x-extension-xht
