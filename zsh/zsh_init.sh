source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-z/zsh-z.plugin.zsh
source ~/.zsh/zsh_utils.sh

# shell prompt
PROMPT='%F{blue}%2~%F %F{red}$%F '

autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=yellow'
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE='20'

# shell color for `ls` command
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
fi

alias vim='nvim'
alias vi='nvim'

alias sz='source ~/.zshrc'
alias ls='ls -Gv'
alias la='ls -a'
alias ll='ls -lh'

# git
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gc="git commit"
alias gcb='git checkout -b'
alias gcl='git clone --recurse-submodules'
alias gca='git commit --amend'
alias gcm="git commit -m"
alias gco="git checkout"
alias gco.="git checkout -- ."
alias gcp='git cherry-pick'
alias gd='git diff'
alias gf='git fetch origin'
alias gl="git log"
alias glss="git log --show-signature"
alias gm="git merge"
alias gpl='git pull origin "$(git_current_branch)"'
alias gps='git push origin "$(git_current_branch)"'
alias grb='git rebase'
alias grs="git reset"
alias grv='git revert'
alias gs="git status"
alias gsh="git show"
alias gst="git stash"
alias gsta="git stash apply"
alias gstc="git stash clear"
alias gt="git tag"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# for Apple Silicon
eval "$(/opt/homebrew/bin/brew shellenv)"
