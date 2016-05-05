find_git_branch() {
    git_branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
    if [[ "$git_branch" == "HEAD" ]]; then
        git_branch='detached*'
    fi
    if [[ "$git_branch" != "" ]]; then
        git_branch="($git_branch)"
    fi
}

find_git_dirty() {
    git_dirty=$(git status --porcelain 2> /dev/null)
    if [[ "$git_dirty" != "" ]]; then
        git_dirty='*'
    fi
}

PROMPT_COMMAND="find_git_branch; find_git_dirty; $PROMPT_COMMAND"

