# Dotfiles installation

On fresh system: 

```
git clone --separate-git-dir=$HOME/.dotfiles git@github.com:voter101/.dotfiles.git ~
```

On not-so-fresh system:

```
git clone --separate-git-dir=$HOME/.dotfiles git@github.com:voter101/.dotfiles.git tmpdotfiles && rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/ && rm -r tmpdotfiles
```
## Alias for commands

```
alias dotfiles='$(which git) --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

## Other config commands

```
dotfiles config --local status.showUntrackedFiles no
```

