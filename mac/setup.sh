# initail setup for this script
command_exists()
{
  command -v "$1" >/dev/null 2>&1
}


# command line tools の矯正更新
# echo "--- Remove CommandLineTools for update! ---"
# sudo rm -rf /Library/Developer/CommandLineTools
# echo "--- Re Install CommandLineTools ---"
# xcode-select --install


# brew install and  Brewfile
# brew がインストールされていなければインストール
if command_exists brew; then
    echo "--- Update brew ---"
    brew update
    echo "--- done ---"
else
    echo "--- Install Homebrew is Start! ---"

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/${USER}/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    brew bundle

    echo "--- done ---"
fi

# pyenv
pyenv install 3.12
pyenv global 3.12
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# zgen zsh plugin manager
if command_exists zgen; then
    echo "-- zgen is already installed."
else
    echo "install zgen"
    git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
    echo "--- done ---"
fi


# create rc links
echo "--- Install dotfiles ---"
ln -sf ~/dev/gitrepos/dotfiles/mac/zsh/.zshrc ~/.zshrc
ln -sf ~/dev/gitrepos/dotfiles/mac/zsh/.zshrc.osx ~/.zshrc.osx
ln -sf ~/dev/gitrepos/dotfiles/mac/zsh/.zshrc.alias ~/.zshrc.alias
ln -sf ~/dev/gitrepos/dotfiles/mac/zsh/.zshrc.zgen ~/.zshrc.zgen
echo "--- done ---"

# vim and plugins
echo "--- Install nvim ---" 
brew install --HEAD luajit
brew install --HEAD lualock
brew install --HEAD neovim
mkdir ~/.config/nvim
ln -sf ~/dev/gitrepos/dotfiles/mac/nvim/init.lua ~/.config/nvim/init.lua
ln -sf ~/dev/gitrepos/dotfiles/mac/nvim/lazy-lock.json ~/.config/nvim/lazy-lock.json
ln -sf ~/dev/gitrepos/dotfiles/mac/nvim/lua ~/.config/nvim/lua

echo "--- done ---"
