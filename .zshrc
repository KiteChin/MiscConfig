# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# themes
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user vi_mode history vcs status newline dir_writable dir )
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs  )
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_from_right

plugins=(
	sudo
	history
	git
	z
	safe-paste
	extract
	rand-quote
	gitignore
	vi-mode
	colored-man-pages
	zsh-autosuggestions
    zsh-syntax-highlighting
)

# autosuggest
source $ZSH/oh-my-zsh.sh
source <(fzf --zsh)

# completion and execute for autosuggest plugins
bindkey '^l' autosuggest-execute

# some alias
alias ll="ls -al"
alias vim="nvim"
alias ra="ranger"
alias s="screenfetch"
alias cl="clear"
#alias sudo="sudo -E"
alias setproxy="export http_proxy='http://127.0.0.1:7890';export https_proxy='https://127.0.0.1:7890';echo set proxy success"
alias unsetproxy="unset http_proxy;unset https_proxy;unset ALL_PROXY;echo 'unset proxy success'"

# My Environment
export EDITOR=$(which nvim)
# alter systemd_editor visodu to nvim
export SYSTEMD_EDITOR=$(which nvim)
export http_proxy='socks5://127.0.0.1:7890'
export https_proxy='socks5://127.0.0.1:7890'
export ALL_PROXY="socks5://127.0.0.1:7890"
export TERM=xterm-256color
export PATH="$PATH:$GEM_HOME/bin"

#fcitx5
export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx

#FZF
export FZF_COMPLETION_TRIGGER='**'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border '
export FZF_DEFAULT_COMMAND="find ."
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_CTRL_R_OPTS='--sort --exact'
export FZF_CTRL_T_OPTS="--select-1 --exit-0"

# 双系统时区
# timedatectl set-local-rtc 1 --adjust-system-clock

# =============== Application config =================
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# Created by `pipx` on 2025-02-27 15:26:02
export PATH="$PATH:/Users/kitechin/.local/bin"
