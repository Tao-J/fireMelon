local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

if [[ $UID -eq 0 ]]; then
    local user_color='%{$terminfo[bold]$fg[red]%}'
else
    local user_color='%{$terminfo[bold]$fg[yellow]%}'
fi

local user_host="%{$user_color%}"'%n%{$reset_color%} %{$terminfo[bold]$fg[magenta]%}%M%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'
local rvm_ruby=''
if which rvm-prompt &> /dev/null; then
  rvm_ruby='%{$fg[red]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    rvm_ruby='%{$fg[red]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
  fi
fi
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="${user_host} ${current_dir} %B%#%b "
#RPS1="${return_code}  ${rvm_ruby} ${git_branch} %{$fg[green]%}[%D{%H:%M:%S %Z}]%{$reset_color%}"
RPS1="${return_code}  ${git_branch} %{$fg[green]%}[%D{%H:%M:%S %Z}]%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="›%{$reset_color%}"
