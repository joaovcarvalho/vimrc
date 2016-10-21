git clone https://github.com/YorickPeterse/happy_hacking.vim
cd happy_hacking.vim
cp -r colors $HOME/.vim/
cd ..

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln .vimrc $HOME/.vimrc

vim +PluginInstall +qall
