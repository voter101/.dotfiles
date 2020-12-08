brew update
brew install neovim/neovim/neovim
brew install ctags
brew install curl
brew install wget
brew install tmux

cp ./.gitignore-global ~/

git config --global core.excludesfile '~/.gitignore-global'
git config --global user.email "voter101@gmail.com"
git config --global user.name "Wiktor Mociun"
git config --global core.editor "vim"
