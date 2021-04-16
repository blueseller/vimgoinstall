# .bashrc

. /usr/share/git-core/contrib/completion/git-prompt.sh


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

declare -x LANG="zh_CN.UTF-8"

export GOPROXY=https://goproxy.io,direct
export GOPRIVATE=
alias relk8="kubectl --kubeconfig=tools/k8s/rel_kubeconfig "

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
alias tmux="TERM=screen-256color tmux -2"

#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\] \[\033[33;1m\]\w\[\033[m\] (\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)) \$ "
export PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \[\033[0;36m\]\h \w\[\033[0;32m\]$(__git_ps1)\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\] ▶\[\033[0m\] '''
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
