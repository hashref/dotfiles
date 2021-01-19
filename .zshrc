bindkey -e

autoload -Uz promptinit && promptinit
prompt pure

if type -p "unix2dos" > /dev/null
then
  autoload maconv -U
fi

alias rm="rm -i"
alias ll="ls -l"
alias hsearch="fc -l 0 | grep"

# Local Configurations
if [ -f ~/.local/share/zsh/zshrc ]
then
  source ~/.local/share/zsh/zshrc
fi
