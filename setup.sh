sudo apt-get install -y ripgrep fd-find fzf neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

if [ ! $ZSH ]; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

rm ~/.zshrc
rm ~/.vimrc

cp ~/dotfiles/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/vimrc ~/.config/nvim/init.vim
ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/zshrc.d ~/.zshrc.d

nvim +PlugInstall +qall

source ~/.zshrc

