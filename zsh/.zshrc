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

# Docker
if type -p "docker" > /dev/null; then
  alias dockermem="docker ps -q | xargs  docker stats --no-stream"
fi

# Task
if type -p "task" > /dev/null; then
  alias t="task"
  alias tcase="t add +Cases"
  alias tmr="t add +MergeRequest"
  alias today="t today | cut -b 11- | sed 1,3d | sed -n -e :a -e '1,2!{P;N;D;};N;ba' | sed -e 's/^/* /';"
fi

# ZSH FUNCTIONS
if type -p "unix2dos" > /dev/null; then
  autoload maconv -U
fi

# LOCAL CONFIGURATIONS
if [ -f ${HOME}/.local/share/zsh/zshrc ]; then
  source ${HOME}/.local/share/zsh/zshrc
fi

