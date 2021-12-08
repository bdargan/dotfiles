# dotfiles

dotfiles config setup using technique from https://news.ycombinator.com/item?id=11071754.

> No extra tooling, no symlinks, files are tracked on a version control system, you can use different branches for different computers, you can replicate you configuration easily on new installation.


## Setup
> new bare repo
```sh
git init --bare $HOME/.dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles remote add origin git@github.com:bdargan/dotfiles.git
dotfiles config status.showUntrackedFiles no
```

## Install
> Clone into non-empty $HOME
```sh
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/bdargan/dotfiles.git .dotfiles-tmp
rsync --recursive --verbose --exclude '.git' .dotfiles-tmp/ $HOME/
rm --recursive .dotfiles-tmp
```

## Update
```sh
dotfiles status
dotfiles add .gitconfig
dotfiles commit -m 'Add gitconfig'
dotfiles push
```
