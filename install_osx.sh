# Install Brew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

brew update
brew doctor
brew install vim
brew install ctags
brew install zsh
brew install tmux
brew install reattach-to-user-namespace --wrap-pbcopy-and-pbpaste

git submodule init
git submodule update

git config --global core.excludesfile '~/.gitignore-global'
