# ----------------------------------------
# zsh
# ----------------------------------------

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git macos gh github python docker docker-compose)

source $ZSH/oh-my-zsh.sh

# ----------------------------------------
# zinit
# ----------------------------------------

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions

# ----------------------------------------
# brew
# ----------------------------------------

PATH=$PATH:/opt/homebrew/bin

# ----------------------------------------
# nvm
# ----------------------------------------

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ----------------------------------------
# default ssh
# ----------------------------------------

eval "$(ssh-agent -s)" && ssh-add ~/.ssh/work

alias ssh-add-work="ssh-add ~/.ssh/work"
alias ssh-add-personal="ssh-add ~/.ssh/personal"

# ----------------------------------------
# flutter
# ----------------------------------------

export PATH=$HOME/development/flutter/bin:$PATH

# ----------------------------------------
# ruby
# ----------------------------------------

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/3.4.0/bin:$PATH"

# ----------------------------------------
# android sdk
# ----------------------------------------

export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
