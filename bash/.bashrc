## if not running interactively, don't do anything ##
[[ -z "$PS1" ]] && return

## Bash-it ##
export BASH_IT="${HOME}/.bash_it"

if [[ -d "${BASH_IT}" ]]; then
  export BASH_IT_THEME='powerline-multiline'

  source "${BASH_IT}/bash_it.sh"
fi

## Bash options ##
shopt -s autocd
shopt -s cdspell
shopt -s checkjobs
shopt -s checkwinsize
shopt -s cmdhist
shopt -s direxpand
shopt -s dirspell
shopt -s globstar
shopt -s histappend
shopt -s hostcomplete
shopt -s lithist

## History configuration ##
HISTCONTROL='ignorespace:ignoredups:erasedups'
HISTSIZE=1000
HISTFILESIZE=3000
HISTTIMEFORMAT='[%F %T]  '

# Don't check mail when opening terminal.
unset MAILCHECK

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

## colors for less, man, etc. ##
[[ -f "${HOME}/.LESS_TERMCAP" ]] && source "${HOME}/.LESS_TERMCAP"

## aliases & functions ##
[[ -f "${HOME}/.config/bash/functions" ]] && source "${HOME}/.config/bash/functions"
[[ -f "${HOME}/.config/bash/aliases" ]] && source "${HOME}/.config/bash/aliases"
