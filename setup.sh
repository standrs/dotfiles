# Install necessary packages
sudo apt-get install -y ripgrep fd-find fzf neovim

# Install plug for neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# If oh my zsh is already installed, don't run it again
if [ ! $ZSH ]; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Non destructive removal of files that may conflict
mv ~/.zshrc ~/.zshrc.old
mv ~/.zshrc.d ~/.zshrc.d.old
mv ~/.vimrc ~/.vimrc.old
mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.old

# gitconfig needs to be copied apparently, but symlink the others
cp ~/dotfiles/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/vimrc ~/.config/nvim/init.vim
ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/zshrc.d ~/.zshrc.d

# Install plugins for nvim as defined in init.vim
nvim +PlugInstall +qall

# Reload zsh config
source ~/.zshrc

