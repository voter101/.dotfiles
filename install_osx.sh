# Install Brew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

brew update
brew install neovim/neovim/neovim
brew install ctags
brew install curl
brew install wget
brew install tmux
brew install yarn
brew install rbenv
brew install nodenv

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp ./.zshrc ~/.zshrc
cp ./.gitignore-global ~/

git config --global core.excludesfile '~/.gitignore-global'
git config --global user.email "voter101@gmail.com"
git config --global user.name "Wiktor Mociun"
git config --global core.editor "vim"
