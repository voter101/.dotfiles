# Install Brew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

sudo brew update
sudo brew doctor
sudo brew install vim
sudo brew install ctags
sudo brew install zsh
sudo brew install tmux
sudo brew install reattach-to-user-namespace --wrap-pbcopy-and-pbpaste

git submodule init
git submodule update

git config --global core.excludesfile '~/.gitignore-global'
