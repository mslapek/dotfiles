set -o vi
bindkey "^R" history-incremental-search-backward

setopt HIST_IGNORE_DUPS
PS1="%F{blue}%3~%f %F{green}%#%f "

