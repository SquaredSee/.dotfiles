# read /etc/bashrc if present
# bash.bashrc for git-for-windows
if [ -f /etc/bash.bashrc ]; then
    source /etc/bash.bashrc
fi

# overwrite /etc/bashrc PS1 prompt
export PS1="\n\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[m\] \[\e[31m\]\${__git_ps1}\[\e[m\]\n\$ "

# required because cmder starts in ~/cmder
cd ~
