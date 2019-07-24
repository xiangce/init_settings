# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/Users/liuxc/Library/Python/3.7/bin:$PATH
export LC_ALL=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH="/Users/liuxc/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=2

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# For Plugins
export ZSH_TMUX_AUTOSTART="true"
export ZSH_TMUX_AUTOQUIT="false"
export ALIEN_THEME=blue
export ALIEN_SECTIONS_LEFT=(
  exit
  time
  user
  path
  vcs_branch:async
  vcs_status:async
  vcs_dirty:async
  newline
  ssh
  venv
  prompt
)
export ALIEN_SECTION_TIME_FORMAT=%H:%M:%S
export USE_NERD_FONT=1
export PLIB_GIT_TRACKED_COLOR=green
export PLIB_GIT_UNTRACKED_COLOR=red


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  python
  github
  gitfast
  alien
  tmux
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=28'
ZSH_AUTOSUGGEST_STRATEGY=match_prev_cmd
bindkey '^v' autosuggest-accept

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000

setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gohadoop='ssh xialiu@hadoop-test-1.gsslab.rdu2.redhat.com'
alias s2='deactivate 2> /dev/null; source .python2/bin/activate'
alias s3='deactivate 2> /dev/null; source .python3/bin/activate'
alias s='s3'
alias gcp3='gco 3.0 && gup && git hm; echo "\n"; git h'
alias gcp='gcp -x'
alias free='free -h'
alias vi='vim'
alias ff='find . | grep'
alias rm.br='git branch | egrep -v "\*| master" | xargs git branch -D'
alias git=hub

# Servers
alias login_insights_dev_rhel7='ssh root@10.72.32.215'
alias login_tomcat_apache_rhel7='ssh root@10.72.32.219'
alias login_sat6_rhel7='ssh root@10.72.32.205'
alias login_rhel8_beta='ssh root@10.72.37.245'
alias login_sat6_rhel6='ssh root@10.72.32.209'
alias login_sat6_rhel8='ssh root@10.72.37.146'
alias login_sat6_rhel8_2='ssh root@10.72.32.193'
alias login_hana_rhel6='ssh root@10.66.208.130'
alias login_hana_rhel7='ssh root@10.66.208.132'
alias login_hana2_rhel7='ssh root@10.72.37.54'
alias login_sap_rhemv='ssh root@10.72.37.39'

autoload -U compinit && compinit
