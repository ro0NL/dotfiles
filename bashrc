export GPG_TTY=$(tty)
export TERM=xterm-256color

for file in ~/.bash-scripts/*; do
    source ${file}
done

# prompt
export PS1="$(echo $PS1 | sed -re 's/\\\$\ ?$//') \[\033[38;5;45m\]\$git_branch\[$(tput sgr0)\]\[\033[38;5;196m\]\$git_dirty\[$(tput sgr0)\]\$ "

# editor
export VISUAL=vim
export EDITOR="$VISUAL"

# aliases
alias ..="cd .."
alias ...="cd ../.."
alias ls="ls  --color=auto --group-directories-first"

