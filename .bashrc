parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/⛕ \1/'
}

export PS1="\[\e[92m\]\u@\h \[\e[96m\]\w \[\e[31m\]\$(parse_git_branch)\[\e[00m\]\n$ "
