# ZSH
bindkey -e

# ZSH PROMPT
autoload -Uz promptinit && promptinit
prompt pure

# ZSH FUNCTIONS
if type -p "unix2dos" > /dev/null
then
  autoload maconv -U
fi

# GLOBAL ALIASES
alias rm="rm -i"
alias ll="ls -l"
alias hsearch="fc -l 0 | grep"

# LOCAL CONFIGURATIONS
if [ -f ~/.local/config/zsh/zshrc ]
then
  source ~/.local/config/zsh/zshrc
fi
