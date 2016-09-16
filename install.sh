git clone https://github.com/vim-scripts/xoria256.vim.git
cd xoria256.vim
cp -r colors $HOME/.vim/
cd ..

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln .vimrc $HOME/.vimrc

vim +PluginInstall +qall
