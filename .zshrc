bindkey -e

autoload -Uz promptinit && promptinit
prompt pure

if type -p "unix2dos" > /dev/null
then
  autoload maconv -U
fi

alias rm="rm -i"
alias ll="ls -l"

# Local Configurations
if [ -f ~/.local/share/zsh/zshrc ]
then
  source ~/.local/share/zsh/zshrc
fi
