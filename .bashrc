# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=


# PS1 {
source ~/.git-prompt.sh

CPwd="\[\033[38;5;33m\]"
CWho="\[\033[38;5;202m\]"
CGit="\[\033[38;5;3m\]"
CBG="\[\033[48;5;236m\]"
NOC="\[\033[0m\]"

#PS1="${CBG}[${CWho}\u${NOC}${CBG}] ${CPwd}\w${CGit}\$(__git_ps1 ' (%s)')${NOC}${CBG}\n->${NOC} "
#┌└ ╒╘ ╭╰ ╓╙ ╚ ╔
PS1="╭[${CWho}\u${NOC}] ${CPwd}\w${CGit}\$(__git_ps1 ' (%s)')${NOC}\n╰>${NOC} "


# }

# Alias
#alias gohadoop='ssh xialiu@hadoop1.gsslab.rdu2.redhat.com'
alias gohadoop='ssh xialiu@hadoop-test-1.gsslab.rdu2.redhat.com'
alias active_source='source bin/activate'
alias free='free -h'
alias mute='amixer set Master mute'
alias unmute='amixer set Master unmute'
alias rm.pyc='find -name "*.pyc" -exec rm {} \;'
alias tmux-restore='~/tmux-session restore && tmux a'

# # tmux
# If not running interactively, do not do anything
#[[ $- != *i* ]] && return
#[[ -z "$TMUX" ]] && exec tmux
alias tmux='tmux -2'
export TERM='screen-256color'

# History Setting {
HISTSIZE=100000
HISTFILESIZE=10000000
# Ignare space and duplicates: ignorespace ignoredups
HISTCONTROL=ignoreboth:erasedups
HISTIGNORE='ll:ls:bg:fg:history'
HISTTIMEFORMAT='%F %T: '
shopt -s histappend
shopt -s cmdhist
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
#export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
#PROMPT_COMMAND='printf "\033k%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
# }

# hub + git
eval "$(hub alias -s)"
function httpless {
    https --pretty=all --print=hb "$@" | less -R;
}
