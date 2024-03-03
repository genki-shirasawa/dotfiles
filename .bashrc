source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

HOST='\u@\h'
PS1="\[\033]0;$HOST\007\]"     # set window title
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'\[\033[32m\]'       # change color
PS1="$PS1"'\u@\h '             # user@host<space>
PS1="$PS1"'\[\033[33m\]'       # change color
PS1="$PS1"'\w'                 # current working directory
if test -z "$WINELOADERNOEXEC"
then
    PS1="$PS1"'\[\033[36m\]'
    PS1="$PS1"'$(__git_ps1)'   # bash function
fi
PS1="$PS1"'\[\033[0m\]'        # change color
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'$ '                 # prompt: always $

alias ls='ls -FG'
alias ll='ls -FGal'
alias la='ls -CFal'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias ps='ps --sort=start_time'
