# ----------------------------------------
# zsh
# ----------------------------------------

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(git docker docker-compose)

source $ZSH/oh-my-zsh.sh

# ----------------------------------------
# alias
# ----------------------------------------

alias ls="exa --icons"
alias code="code-insiders"
alias lvim="/home/izakdvlpr/.local/bin/lvim"

# ----------------------------------------
# color scripts
# ----------------------------------------

export PATH="$PATH:$HOME/.local/share/color-scripts"

# ----------------------------------------
# nvm
# ----------------------------------------

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# ----------------------------------------
# zinit
# ----------------------------------------

if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions

# ----------------------------------------
# kitty
# ----------------------------------------

[[ "$TERM" == "xterm-kitty" ]] && alias ssh="kitty +kitten ssh"

# ----------------------------------------
# android sdk
# ----------------------------------------

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# ----------------------------------------
# flutter
# ----------------------------------------

export PATH="$PATH:$HOME/flutter/bin"

# ----------------------------------------
# go
# ----------------------------------------

export PATH=$(go env GOPATH)/bin:$PATH