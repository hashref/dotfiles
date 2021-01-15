bindkey -e

autoload -Uz promptinit && promptinit
prompt pure

if type -p "unix2dos" > /dev/null
then
  autoload maconv -U
fi

alias rm="rm -i"
alias ll="ls -l"
alias dnsr="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

# TaskWarrior Aliases
alias tsync="task sync"
alias today="task today | cut -b 11- | sed 1,3d | sed -n -e :a -e '1,2!{P;N;D;};N;ba' | sed -e 's/^/* /';"

# Local Configurations
if [ -f ~/.local/share/zsh/zshrc ]
then
  source ~/.local/share/zsh/zshrc
fi
