# brew install and  Brewfile
# brew がインストールされていなければインストール
if [ -z "$(command -v brew)" ]; then
    echo "--- Install Homebrew is Start! ---"

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/${USER}/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    brew bundle

    echo "--- done ---"
fi

# pyenv
pyenv install 3.9.10
pyenv global 3.9.10
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# zgen zsh plugin manager
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"

# create rc links
echo "--- Install dotfiles ---"
ln -s ~/dev/gitrepos/dotfiles/mac/zsh/.zshrc ~/.zshrc
ln -s ~/dev/gitrepos/dotfiles/mac/zsh/.zshrc.osx ~/.zshrc.osx
ln -s ~/dev/gitrepos/dotfiles/mac/zsh/.zshrc.alias ~/.zshrc.alias
ln -s ~/dev/gitrepos/dotfiles/mac/zsh/.zshrc.zgen ~/.zshrc.zgen
echo "--- done ---"

# vim plugin 
echo "--- Install dein ---"
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

ln -s ~/dev/gitrepos/dotfiles/mac/vim/dein.toml ~/.config/nvim/dein.toml
ln -s ~/dev/gitrepos/dotfiles/mac/vim/dein.lazy.toml ~/.config/nvim/dein.lazy.toml
ln -s ~/dev/gitrepos/dotfiles/mac/vim/init.vim ~/.config/nvim/init.vim


echo "--- done ---"
