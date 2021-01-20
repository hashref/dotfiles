# dotfiles

A collection of my dotfiles to make personalizing a new system much easier. Pretty basic stuff.

## Initialize

This project uses git submodules to install vim plugins and such. Therefore, in order to have all this function, you need to run the following commands after you clone this repo.

```bash
git submodule init
git submodule update
```

## Install

I've converted this repo to use [stow](https://www.gnu.org/software/stow/) for managing the symlinks. You could, of course, manage all the symlinks yourself, but the overhead that `stow` has is worth it to me to make this a dependency on all the systems I install my dotfiles on.

The `stow` target directory is `$HOME`. You can modify `.stowrc` in the repo to suit your needs or pass it the `-t <directory>` option to `stow`.

```bash
stow zsh vim ...
```
