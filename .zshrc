# Path to your oh-my-zsh installation.
export ZSH=/Users/sschadwick/.oh-my-zsh

# Prompt theme:
autoload -U promptinit
promptinit

autoload -U compinit
compinit

ZSH_THEME="custom"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"

plugins=(git brew gulp heroku node nvm npm sublime zsh-syntax-highlighting)

# Load zsh-autosuggestions.
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/autosuggestions.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Enable autosuggestions automatically.
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

# No Analytics
HOMEBREW_NO_ANALYTICS=1

# User configuration
export PATH="/Users/sschadwick/.rbenv/shims:/Users/sschadwick/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/MacGPG2/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='subl'
else
  export EDITOR='subl'
fi

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# workaround for aliased heroku:
# https://github.com/robbyrussell/oh-my-zsh/issues/2250
unalias heroku

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
