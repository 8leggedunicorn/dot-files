# Path to your oh-my-zsh installation.
export ZSH=/home/yigal/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
aws
colorize
gem
git
github
knife
nmap
nvm
pip
tmux
tmuxinator
ubuntu
virtualenv
virtualenvwrapper
zsh_reload
)
# User configuration

path=(
.
/home/yigal/node_modules/
/home/yigal/google-cloud-sdk/bin/
/bin
/home/yigal/node_modules/hexo-cli/bin
/home/yigal/Android/Sdk/platform-tools
$PWD
/bin
/home/yigal/.bin
/home/yigal/.local/bin/
/sbin
/usr/bin
/usr/games
/usr/local/bin
/usr/local/games
/usr/local/sbin
/usr/sbin
)
#export PATH="
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
VIRTUAL_ENV_DISABLE_PROMPT=
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

tmux_renumber() {
  i=0
  tmux list-windows | cut -d: -f1 | while read winindex; do 
  if (( winindex != i )); then
    tmux move-window -d -s $winindex -t $i
  fi
  (( i++ ))
done;}

MANPATH=$MANPATH:$HOME/.man
INFOPATH=$INFOPATH:$HOME/.info

# allows autocompletion of package installations (apt)
setopt completealiases
alias tmux='TERM=xterm-256color tmux'
# compdef _dirs ls
#
#setopt auto_cd
#cdpath=($HOME/Documents $HOME/Documents/DataScience/DataScienceNotes)
hash -d DSNotes="$HOME/Documents/DataScience/DataScienceNotes"
hash -d Udacity="$HOME/Documents/DataScience/Udacity_Data_Analysis_Nano_Degree"
hash -d UdacityP1="$HOME/Documents/DataScience/Udacity_Data_Analysis_Nano_Degree/P1"
hash -d UdacityP2="$HOME/Documents/DataScience/Udacity_Data_Analysis_Nano_Degree/P2"


export NVM_DIR="/home/yigal/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# The next line updates PATH for the Google Cloud SDK.
source '/home/yigal/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/home/yigal/google-cloud-sdk/completion.zsh.inc'
