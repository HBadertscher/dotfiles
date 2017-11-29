# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Custom setup
export TERM="xterm-256color" 
DEFAULT_USER="hbaderts"

# Source patched fonts
source /home/hbaderts/.fonts/*.sh
POWERLEVEL9K_MODE='awesome-fontconfig'

# Path to your oh-my-zsh installation.
export ZSH=/home/hbaderts/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
  cp
  debian
  docker
  git
  systemd
  vi-mode
)

source $ZSH/oh-my-zsh.sh

# My custom context thingy
POWERLEVEL9K_HSRCONTEXT="prompt_hsrcontext"
POWERLEVEL9K_HSRCONTEXT_FOREGROUND="white"
POWERLEVEL9K_HSRCONTEXT_BACKGROUND="black"

prompt_hsrcontext() {
    local content=""
    if [[ "$(hostname)" == "DT-TT-119901" ]]; then 
       if [[ "$(whoami)" != "$DEFAULT_USER" ]]; then
           content="\uF015$(whoami)"
       else
           content="\uF015"
       fi
    elif [[ "$(hostname)" == "wx-el-119730" ]]; then
       if [[ "$(whoami)" != "$DEFAULT_USER" ]]; then
           content="\uF233$(whoami)"
       else
           content="\uF233"
       fi
    else
       if [[ "$(whoami)" != "$DEFAULT_USER" ]]; then
           content="$(whoami)@$(hostname -f)"
       else
           content="$(hostname -f)"
       fi
    fi
    $1_prompt_segment "$0" "$2" "black" "white" "$content"
}

# User configuration
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator hsrcontext dir docker_machine vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vi_mode status background_jobs_joined)

# Disable home and subfolder icons
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''

# Color scheme
POWERLEVEL9K_VIRTUALENV_BACKGROUND="green"

# Setup vi mode
POWERLEVEL9K_VI_INSERT_MODE_STRING="I"
POWERLEVEL9K_VI_COMMAND_MODE_STRING="N"

# Vim aliases
alias vim="nvim"
alias vi="nvim"
export EDITOR='vim'
export VISUAL=vim

# CUDA stuff
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64:$LD_LIBRARY_PATH
export PATH=/usr/local/cuda-8.0/bin:$PATH
