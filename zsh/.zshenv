# ZSH
fpath=( ~/.zshfunctions ~/.zsh-theme "${fpath[@]}" );

# EDITOR
export EDITOR='vim'
export VISUAL='vim'

# GPG
export GNUPGHOME="~/.local/share/gnupg"

# LOCAL BIN
if [ -d ~/.local/bin ]; then
  export PATH="$HOME/.local/bin:$PATH"
fi 

# LOCAL CONFIGURATIONS
if [ -f ~/.config/zsh/zshenv ]; then
  source ~/.config/zsh/zshenv
fi
