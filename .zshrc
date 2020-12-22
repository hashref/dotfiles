fpath+=$HOME/.zsh-theme

autoload -Uz promptinit && promptinit
prompt pure

if type -p "unix2dos" > /dev/null
then
  autoload maconv -U
fi

alias rm="rm -i"
alias ll="ls -l"
alias dnsr="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
alias today="task today | cut -b 11- | sed 1,3d | sed -n -e :a -e '1,2!{P;N;D;};N;ba' | sed -e 's/^/* /';"
