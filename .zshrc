# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/kitechin/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user vi_mode date history vcs status newline dir_writable dir )
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs  )
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
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

	bundler
	dotenv
	macos
	rake
	rbenv
	ruby
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#


## Less Colors for Man Pages
#export LESS_TERMCAP_mb=$'\e[01;31m'       # begin blinking
#export LESS_TERMCAP_md=$'\e[01;38;5;74m'  # begin bold
#export LESS_TERMCAP_me=$'\e[0m'           # end mode
#export LESS_TERMCAP_se=$'\e[0m'           # end standout-mode
#export LESS_TERMCAP_so=$'\e[38;5;246m'    # begin standout-mode - info box
#export LESS_TERMCAP_ue=$'\e[0m'           # end underline
#export LESS_TERMCAP_us=$'\e[04;38;5;146m' # begin underline

#swape caps and esc
setxkbmap -option caps:swapescape

#some alias
alias ll="ls -al"
alias vim="nvim"
alias ra="ranger"
alias s="screenfetch"
alias cl="clear"
alias sudo="sudo -E"

#My Environment
export EDITOR=$(which nvim)
export SYSTEMD_EDITOR=$(which nvim)
export http_proxy='http://127.0.0.1:7890'
export https_proxy='https://127.0.0.1:7890'
export TERM=xterm-256color
#export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

#FZF
export FZF_COMPLETION_TRIGGER='**'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border '
export FZF_DEFAULT_COMMAND="find ."
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_CTRL_R_OPTS='--sort --exact'
export FZF_CTRL_T_OPTS="--select-1 --exit-0"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /home/kitechin/program/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /usr/share/fzf/key-bindings.zsh
