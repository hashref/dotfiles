# ZSH
bindkey -e

export HISTFILE=~/.histfile
export HISTSIZE=1000000
export SAVEHIST=1000000

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY_TIME
setopt EXTENDED_HISTORY

# ZSH PROMPT
autoload -Uz promptinit && promptinit
prompt pure

# GLOBAL ALIASES
alias rm="rm -i"
alias ll="ls -l"
alias history="fc -l 1"
alias hsearch="fc -l 0 | grep"

# GLOBAL DOCKER ALIASES
if type -p "docker" > /dev/null
then
  alias dockermem="docker ps -q | xargs  docker stats --no-stream"
fi

# ZSH FUNCTIONS
if type -p "unix2dos" > /dev/null
then
  autoload maconv -U
fi

# LOCAL CONFIGURATIONS
if [ -f ~/.config/zsh/zshrc ]
then
  source ~/.config/zsh/zshrc
fi

