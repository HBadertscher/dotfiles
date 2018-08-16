# Custom setup
export TERM="xterm-256color" 
DEFAULT_USER="hbaderts"

# Source patched fonts
# source /home/hbaderts/.fonts/*.sh
# POWERLEVEL9K_MODE='awesome-fontconfig'

# Virtualenv path
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=~/.envs
source /usr/local/bin/virtualenvwrapper.sh

# Path to your oh-my-zsh installation.
export ZSH=/home/hbaderts/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  cargo
  colored-man-pages
  docker
  git
  vi-mode
  virtualenvwrapper
  wd
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
           content="\uF015 $(whoami)"
       else
           content="\uF015"
       fi
    elif [[ "$(hostname)" == "wx-el-119730" ]]; then
       if [[ "$(whoami)" != "$DEFAULT_USER" ]]; then
           content="\uF233 $(whoami)"
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

# Override git context
function +vi-vcs-detect-changes() {
  vcs_visual_identifier=''
  if [[ -n "${hook_com[staged]}" ]] || [[ -n "${hook_com[unstaged]}" ]]; then
    VCS_WORKDIR_DIRTY=true
  else
    VCS_WORKDIR_DIRTY=false
  fi
}

# User configuration
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator hsrcontext dir docker_machine virtualenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vi_mode status background_jobs_joined)

# Disable home and subfolder icons
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_ETC_ICON=''
POWERLEVEL9K_FOLDER_ICON=''

# Color scheme
POWERLEVEL9K_VIRTUALENV_BACKGROUND="green"

# Setup vi mode
POWERLEVEL9K_VI_INSERT_MODE_STRING="I"
POWERLEVEL9K_VI_COMMAND_MODE_STRING="N"

# Vim aliases
if [[ -x "$(command -v nvim)" ]]; then
    alias vim="nvim"
    alias vi="nvim"
elif [[ -x "$(command -v vim)" ]]; then
    alias vi="vim"
else
    alias vim="vi"
fi
export EDITOR='vim'
export VISUAL=vim

# CUDA stuff
# export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64:$LD_LIBRARY_PATH
# export PATH=/usr/local/cuda-8.0/bin:$PATH

# Set up dircolors with solarized
eval `dircolors ~/.dircolors`

# Make the zsh autocompletion use the LS_COLORS like in ls
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Sudo
alias su="sudo -s `which zsh`"

# Matlab alias
alias gmatlab="matlab -nodesktop -nosplash"
alias cmatlab="matlab -nodesktop -nojvm -nosplash"

# Don't share zsh history among sessions
unsetopt share_history
setopt no_share_history
