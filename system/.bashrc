# read /etc/bashrc if present
# bash.bashrc for git-for-windows
if [ -f /etc/bash.bashrc ]; then
    source /etc/bash.bashrc
fi

# read ~/.bash_alias if present
if [ -f ~/.bash_alias ]; then
    source ~/.bash_alias
fi

# overwrite /etc/bashrc PS1 prompt
GIT_PS1_SHOWDIRTYSTATE=true
export PS1="\n\[\e[32m\]\u@\h:\[\e[m\] \[\e[33m\]\w\[\e[m\] \[\e[31m\]\`__git_ps1\`\[\e[m\]\n\$ "

# required because cmder starts in ~/cmder
cd ~