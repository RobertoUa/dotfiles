
#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
#[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####
#zmodload zsh/zprof
#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#export PATH=$HOME/.cabal/bin:$PATH
export PATH=/usr/local/opt/python/libexec/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export GOPATH="$HOME/gopath/"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="$PATH:/Users/vbarna/Library/Application Support/Coursier/bin"
export PATH="$PATH:/Users/vbarna/Library/Application Support/Code/User/globalStorage/ms-vscode-remote.remote-containers/cli-bin"
export PATH="$PATH:/usr/local/bin/jb_toolbox"
#export BROWSER=google-chrome-unstable
#export TERM=screen-256color
export VBOX_USB=usbfs
unset M2_HOME
#export M2_HOME=/usr/local/Cellar/maven/3.2.3
#export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-jetbrains/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-1.0.0-rc6/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_202.jdk/Contents/Home
export JAVA_HOME=`/usr/libexec/java_home -v 11`
#export GRAALVM_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-1.0.0-rc13/Contents/Home
#export JAVA_TOOL_OPTIONS="-Dapple.awt.UIElement=true -XX:+IgnoreUnrecognizedVMOptions -Xbootclasspath/a:/Users/vbarna/Downloads/marlin-0.9.4-Unsafe.jar -Dsun.java2d.renderer=org.marlin.pisces.MarlinRenderingEngine"
#export JAVA_TOOL_OPTIONS="-Dapple.awt.UIElement=true -XX:+IgnoreUnrecognizedVMOptions"
#export JAVA_TOOL_OPTIONS="-Dapple.awt.UIElement=true -XX:+IgnoreUnrecognizedVMOptions -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCI -XX:+UseJVMCICompiler -XX:+ShowCodeDetailsInExceptionMessages"
export JAVA_TOOL_OPTIONS="-Dapple.awt.UIElement=true -XX:+IgnoreUnrecognizedVMOptions -XX:+UnlockExperimentalVMOptions -XX:+ShowCodeDetailsInExceptionMessages"

export TF_PLUGIN_CACHE_DIR="$HOME/.terraform.d/plugin-cache"

export SSH_AUTH_SOCK=$HOME/.sekey/ssh-agent.ssh

export MAVEN_OPTS="-Xms1024m -Xmx8096m"

export RANGER_LOAD_DEFAULT_RC=FALSE

#locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export HISTFILE=/Users/vbarna/.zhistory

#export vblank_mode=0
#source "${ZDOTDIR:-$HOME}/.archlinux.zsh"

#source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
#source ~/.oh_zhrc

#source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"



# Tell antibody that you're done.
#antibody apply
source ~/.zsh_plugins.sh

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


#alias j='fasd_cd -i'
alias vim="nvim"
alias j='z -i'
alias date='gdate'
alias reload='exec zsh -l'


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
alias k=kubectl

#unalias gm
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias dive="docker run -ti --rm  -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive"
alias dfimage="docker run -v /var/run/docker.sock:/var/run/docker.sock --rm alpine/dfimage"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
#source ~/transfer.sh
source ~/.fzfrc


export HISTSIZE=1000000
export SAVEHIST=1000000
export HISTFILE=/Users/vbarna/.zhistory
setopt INC_APPEND_HISTORY

alias http_prod='http --session=~/.httpie/sessions/prod.json'

#source /usr/local/share/zsh/site-functions/_awless

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
#[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
#[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh


if brew command command-not-found-init > /dev/null 2>&1; then eval "$(brew command-not-found-init)"; fi

function changeMac() {
  local mac=$(openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//')
  sudo ifconfig en0 ether $mac
  sudo ifconfig en0 down
  sudo ifconfig en0 up
  echo "Your new physical address is $mac"
}

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault

[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases
source <(kubectl completion zsh)
source ~/.kubectl_fzf.plugin.zsh

export PATH="$PATH:$HOME/.bash-my-aws/bin"
source ~/.bash-my-aws/aliases


# For ZSH users, uncomment the following two lines:
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

source ~/.bash-my-aws/bash_completion.sh

#if [ -d ${HOME}/.bash-my-aws ]; then
  #for f in ~/.bash-my-aws/lib/*-functions; do source $f; done
#fi

source /Users/vbarna/Library/Preferences/org.dystroy.broot/launcher/bash/br

export AWS_PAGER=""
alias aws_test="aws --profile animatron-test"
alias aws_prod="aws --profile animatron"
function al_test() {
  "awslogs $@ --profile animatron-test"
}
function al_prod() {
  "awslogs $@ --profile animatron"
}

function cwlog(){
  stack=$1
  app=$2
  [[ $stack == "prod" ]] && profile="animatron" || profile="animatron-test"
  awslogs get /animatron/$app-$stack ALL --watch --profile $profile -S -G
}

# start s5cmd -- Lines below are added by s5cmd -cmp-install
# To automatically uninstall, do not remove these comments and run s5cmd -cmp-uninstall
_s5cmd_completer() { read -l; local cl="$REPLY"; read -ln; local cp="$REPLY"; reply=(`COMP_SHELL=zsh COMP_LINE="$cl" COMP_POINT="$cp" /usr/local/bin/s5cmd`) }
compctl -K _s5cmd_completer s5cmd
# end s5cmd
#
export PATH="/Users/vbarna/workspace/git-fuzzy/bin:$PATH"


function deploy_backend() {
  export STACK=test;
  export DOCKER_REGISTRY=207933346185.dkr.ecr.us-east-1.amazonaws.com;
  export BUILD_NUMBER=local;
  export BASE_VERSION="${BASE_VERSION:-23}"
  cd /Users/vbarna/workspace/Animatron/editor-clean-gradle &&
    ./gradlew jib --continue  -x test -p animatron-backend &&
    cd /Users/vbarna/workspace/Animatron/infra-clean/terraform/sites/test/backend-service &&
    terraform apply -auto-approve  -var app_version=local &&
    aws ecs update-service  --cluster backend-test --service backend-test --force-new-deployment ;
    cd /Users/vbarna/workspace/Animatron/editor-clean-gradle
}


#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
#[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####
