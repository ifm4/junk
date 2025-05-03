###################################################################################################

PS1='\[\e[38;5;205;1m\]\[\e[7m\]\w\[\e[27m\] \[\e[0m\]'
PROMPT_DIRTRIM=2
HISTFILE=$HOME/.cache/bash_history
HISTFILESIZE=
HISTSIZE=
PATH=$PATH:$HOME/.bin

export PATH
export EDITOR=/usr/bin/hx
export PAGER=/usr/bin/bat

set -o vi
shopt -s autocd
eval "$(fzf --bash)"
alias ls='eza --group-directories-first --icons=auto'
alias la='eza -la --group-directories-first --icons=auto'
set completion-ignore-case on

###################################################################################################

bind '"\C-o":"_yazi\C-m"'
function _yazi() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

###################################################################################################
