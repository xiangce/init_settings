# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=


# PS1 {
source ~/.git-prompt.sh

CWhoS="\[\e[30;103m\]"
CWhoE="\[\e[93;100m\]"
CPwdS="\[\e[97;100m\]"
CPwdE="\[\e[90;40m\]"
CGitS="\[\e[96;40m\]"
CGitE="\[\e[30;49m\]"
C2S="\[\e[30;49m\]"
C2E="\[\e[90;49m\]"
NOC="\[\e[m\]"
#┌└ ╒╘ ╭╰ ╓╙ ╚ ╔
PS1="${CWhoS}┌\h${CWhoE}${CPwdS}\w${CPwdE}${CGitS}\$(__git_ps1 ' %s') ${CGitE}${NOC}\n${C2S}└> ${NOC}"


# }

# Alias
# alias gohadoop='ssh xialiu@hadoop1.gsslab.rdu2.redhat.com'
alias ll='ls -l -G'
alias ls='ls -G'
alias gohadoop='ssh xialiu@hadoop-test-1.gsslab.rdu2.redhat.com'
alias sourceact='source .python2/bin/activate'
alias free='free -h'
alias mute='amixer set Master mute'
alias unmute='amixer set Master unmute'
alias rm.pyc='find -name "*.pyc" -exec rm {} \;'
# alias tmux-restore='~/tmux-session restore && tmux a'
alias git-db='git br | egrep -v "\*| master" | xargs git br -D'

# # tmux
# If not running interactively, do not do anything
#[[ $- != *i* ]] && return
#[[ -z "$TMUX" ]] && exec tmux
# alias tmux='tmux -2'
export TERM='screen-256color'

# History Setting {
SHELL_SESSION_HISTORY=0
HISTSIZE=100000
HISTFILESIZE=10000000
# Ignare space and duplicates: ignorespace ignoredups
HISTCONTROL=ignoreboth:erasedups
HISTIGNORE='ll:ls:bg:fg:history'
HISTTIMEFORMAT='%F %T: '
shopt -s histappend
shopt -s cmdhist
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
# }

# hub + git
eval "$(hub alias -s)"
