export TERM=xterm-256color
export PATH=~/.bin:$PATH
source ~/.bash/init.sh
source ~/.bash/sensible.sh

# prompt
source ~/.bash/prompt.sh
export PS1="$(echo $PS1 | sed -re 's/\\\$\ ?$//') \[\033[38;5;45m\]\$git_branch\[$(tput sgr0)\]\[\033[38;5;196m\]\$git_dirty\[$(tput sgr0)\]\$ "

# editor
export VISUAL=vim
export EDITOR="$VISUAL"

# aliases
alias ..="cd .."
alias ...="cd ../.."
alias ls="ls  --color=auto --group-directories-first"

