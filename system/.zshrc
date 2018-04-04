# If you come from bash you might have to change your $PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation
export ZSH=/home/colton/.oh-my-zsh

# Set name of the theme to load
#ZSH_THEME=""
ZSH_THEME="spaceship-prompt/spaceship"

# override the prompt symbol for spaceship
SPACESHIP_CHAR_SYMBOL="❯ "

# disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# change the command execution time stamp shown in the history command output
# the optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

plugins=(
  docker
  git
  node
  npm
  pip
  postgres
  python
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# override path underlining from zsh-syntax-highlighting plugin
ZSH_HIGHLIGHT_STYLES[path]='none'

# set the pure prompt (must set ZSH_THEME="")
# must be set after oh-my-zsh.sh because oh-my-zsh.sh overwrites prompt
#fpath=("$HOME/.zfunctions" $fpath)
#autoload -U promptinit
#promptinit
#prompt pure

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
