PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

export ANDROID_HOME=/usr/local/Cellar/android-sdk/24.1.2
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=$PATH:~/bin:/home/roberto/.cabal/bin:/usr/share/perl5/vendor_perl/auto/share/dist/Cope:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl:/usr/bin/vendor_perl/:~/Documents/play-2.2.5:/usr/local/bin/
export BROWSER=google-chrome-unstable
export TERM=screen-256color
#export PYTHONPATH=/usr/lib/python3.3/site-packages
export VBOX_USB=usbfs
unset M2_HOME
#export M2_HOME=/usr/local/Cellar/maven/3.2.3
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd'
#export JAVA_FONTS=/usr/share/fonts/TTF
export MAVEN_OPTS="-Xms1024m -Xmx4096m -XX:PermSize=1024m"

#docker
export DOCKER_CERT_PATH=/Users/roberto/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376

#locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export RUBY_HEAP_FREE_MIN=500000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000

#export vblank_mode=0
source "${ZDOTDIR:-$HOME}/.archlinux.zsh"

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

source ~/mvncolor.sh

alias sbl="sudo subl"
alias tmux="tmux -2"
alias sr="./bin/rails"
alias sake="spring rake"
alias sc="./bin/rails console"
alias sspec="spring rspec"
alias gst="git status"
#alias rm="nocorrect trash"
bindkey "^X" _expand_alias # ctrl+x to expand alias
alias r="ranger"

source ~/.fzfrc

export KEYTIMEOUT=1 # sets delay for vi mode to 0.1 sec
# Use vim cli mode
bindkey '^P' up-history
bindkey '^N' down-history

# ctrl-w removed word backwards
bindkey '^w' backward-kill-word

# ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward

alias gd='git diff'
alias gdc='git diff --cached'
