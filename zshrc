#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

#export PATH=$HOME/.cabal/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export GOPATH="$HOME/gopath/"
export PATH=$PATH:$GOPATH/bin
export PATH="$HOME/.yarn/bin:$PATH"
#export BROWSER=google-chrome-unstable
#export TERM=screen-256color
export VBOX_USB=usbfs
unset M2_HOME
#export M2_HOME=/usr/local/Cellar/maven/3.2.3
#export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-jetbrains/Contents/Home
export MAVEN_OPTS="-Xms1024m -Xmx4096m"

export RANGER_LOAD_DEFAULT_RC=FALSE

#locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export HISTFILE=/Users/vbarna/.zhistory

#export vblank_mode=0
#source "${ZDOTDIR:-$HOME}/.archlinux.zsh"

#source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
#source ~/.oh_zhrc

source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found
antigen bundle brew
antigen bundle scala
antigen bundle httpie
antigen bundle cp
antigen bundle osx
antigen bundle mvn
antigen bundle fasd
antigen bundle vi-mode
antigen bundle history
antigen bundle colorize
antigen bundle extract
antigen bundle colored-man-pages

#antigen bundle zdharma/fast-syntax-highlighting
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle history-substring-search
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle andrewferrier/fzf-z
antigen bundle MichaelAquilina/zsh-you-should-use


# Load the theme.
#antigen theme refined
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Tell Antigen that you're done.
antigen apply

# plugins seetings

autoload -U compinit && compinit
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

zstyle ':completion:*' menu select
zstyle ':bracketed-paste-magic' active-widgets '.self-*'
zmodload zsh/complist

# use the vi navigation keys in menu completion
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

#source ~/mvncolor.sh
source ~/transfer.sh
source ~/.fzfrc

#alias j='fasd_cd -i'
alias j='z -i'

export KEYTIMEOUT=1 # sets delay for vi mode to 0.1 sec
# Use vim cli mode
bindkey '^P' up-history
bindkey '^N' down-history
# ctrl-w removed word backwards
bindkey '^w' backward-kill-word
# ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward

alias gcm='git commit -m'
alias gia='git add'
alias gd='git diff'
alias gdc='git diff --cached'
alias gst="git status"
alias gpc='git push --set-upstream origin "$(git-branch-current 2> /dev/null)"'
alias gs="git stash"
alias gsp="git stash pop"
#alias rm="nocorrect trash"
bindkey "^X" _expand_alias # ctrl+x to expand alias
alias r="ranger"
#alias python2='python'
alias pip2='pip'
#alias python='python3'
alias pip='pip3'
alias cd='cd'
alias ls='exa -l'
alias google-chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"


unalias gm
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"


export HISTSIZE=1000000
export SAVEHIST=1000000
export HISTFILE=/Users/vbarna/.zhistory

alias http_prod='http --session=~/.httpie/sessions/prod.json'

source /usr/local/share/zsh/site-functions/_awless

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
