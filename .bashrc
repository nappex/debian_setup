# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/⛕ \1/'
}

export PS1="\[\e[92m\]\u@\h \[\e[96m\]\w \[\e[31m\]\$(parse_git_branch)\[\e[00m\]\n$ "
