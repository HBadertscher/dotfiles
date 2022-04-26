# From alanpeabody.zsh-theme and agnoster.zsh-theme
if [[ "$USERNAME" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]];
then
    local user='%n'
else
    local user=''
fi

if [[ -n "$SSH_CLIENT" ]];
then
    local host='@%m'
else
    local host=''
fi

setopt prompt_subst
PROMPT="%{$fg[blue]%}${user}${host}%{$reset_color%} "
PROMPT+="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT+=' %{$fg[cyan]%}$(shrink_path -f)%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
