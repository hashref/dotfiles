export PATH=~/.local/bin/:~/.zshfunctions:~/.zsh-theme:$PATH

if [ -d ~/.plenv ]
then
  export PATH=~/.plenv/bin:$PATH
  eval "$(plenv init -)"
fi

# Local Configurations
if [ -f ~/.local/share/zsh/zprofile ]
then
  source ~/.local/share/zsh/zprofile
fi
