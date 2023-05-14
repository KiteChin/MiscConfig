# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/kitechin/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# prompt Setting
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user vi_mode history vcs status newline dir_writable dir )
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs  )
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
# directory show setting
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_from_right

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
	sudo
	history
	git
	z
	safe-paste
	git-open
	extract
	rand-quote
	gitignore
	vi-mode
	colored-man-pages
	zsh-autosuggestions
    zsh-syntax-highlighting

	bundler
	dotenv
	macos
	rake
	rbenv
	ruby
)

# autosuggest
source $ZSH/oh-my-zsh.sh

# completion and execute for autosuggest plugins
bindkey '^l' autosuggest-execute

# swape caps and esc
setxkbmap -option caps:swapescape

# some alias
alias ll="ls -al"
alias vim="nvim"
alias ra="ranger"
alias s="screenfetch"
alias cl="clear"
#alias sudo="sudo -E"

# connect Kite's Airpods Pro
alias headphones="until bluetoothctl connect A4:C6:F0:C0:F7:35; do  echo ...  ; sleep 1; done"
alias myip="ip addr show | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias schoolwificon="myip=$(ip addr show | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1');curl \"http://192.168.200.2:801/eportal/?c=Portal\&a=login\&callback=dr1003\&login_method=1\&user_account=%2C0%2C1665225%40telecom\&user_password=Qin961574793\&wlan_user_ip=$myip\&wlan_user_ipv6=\&wlan_user_mac=000000000000\&wlan_ac_ip=\&wlan_ac_name=\""


# My Environment
export EDITOR=$(which nvim)
# alter systemd_editor visodu to nvim
export SYSTEMD_EDITOR=$(which nvim)
export http_proxy='http://127.0.0.1:7890'
export https_proxy='https://127.0.0.1:7890'
export TERM=xterm-256color
export PATH="$PATH:$GEM_HOME/bin"
export PATH="$PATH:$HOME/Apps"

#FZF
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
export FZF_COMPLETION_TRIGGER='**'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border '
export FZF_DEFAULT_COMMAND="find ."
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_CTRL_R_OPTS='--sort --exact'
export FZF_CTRL_T_OPTS="--select-1 --exit-0"

