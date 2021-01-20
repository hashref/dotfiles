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

```bash
stow zsh vim ...
```

__NOTE:__ If your dotfiles' parent directory isn't `${HOME}`, you can create a `.stowrc` file in the repo that will specify the target directory. This will avoid having to use the `-t` stow option. Keep in mind that variables aren't expanded, so you can't your `~` or `${HOME}`. You will have to specify the directory.

```bash
--target=<your home directory>
```
