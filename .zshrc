# zmodload zsh/zprof

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

autoload -Uz compinit
if [ $(date +'%j') != $(/usr/bin/stat -f '%Sm' -t '%j' ${ZDOTDIR:-$HOME}/.zcompdump) ]; then
  compinit
else
  compinit -C
fi

plugins=(git zsh-autosuggestions)

FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

source $ZSH/oh-my-zsh.sh

eval "$(/opt/homebrew/bin/brew shellenv)"

alias v="nvim"
alias dotfiles=/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME

eval "$(zoxide init zsh)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH

# fnm
FNM_PATH="/Users/nochzato/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/Users/nochzato/Library/Application Support/fnm:$PATH"
  eval "`fnm env`"
fi
eval "$(fnm env --use-on-cd)"

# zprof
