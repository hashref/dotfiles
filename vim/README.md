# vim

This stow will install all the necessary configs for configuring `vim` in my Debian systems.

## Installing Config

Simple...

```bash
stow vim
```

## Debian Issues

I've had some issue with Debian11 installs where I get the following errors when runnig `vim` after the configs are installed.

```bash
❯ vi .vimrc
Error detected while processing /home/dbetz/.vimrc:
line    1:
E319: Sorry, the command is not available in this version: execute pathogen#infect()
line    2:
E492: Not an editor command: Helptags
line   17:
E319: Sorry, the command is not available in this version: let g:netrw_home='~/.cache/vim'
line   19:
E319: Sorry, the command is not available in this version: syntax on
line   20:
E185: Cannot find color scheme 'Sunburst'
Press ENTER or type command to continue
```

Usually it happens when I've forgotten to init the git submodules after cloning this repo. But if you are still seeing these error, even after confirming that the submodules are copacetic, install vim...

```bash
sudo apt install vim
```

This tends to pull down other packages, which are obviously needed.

