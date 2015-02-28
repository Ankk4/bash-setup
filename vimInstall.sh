#!/bin/bash

# function to install auto-pairs plugin
installAutoPairs(){
    mkdir -p ~/.vim/plugin

    wget https://github.com/jiangmiao/auto-pairs/archive/master.zip
    unzip master.zip

    cp auto-pairs-master/plugin/auto-pairs.vim ~/.vim/plugin 
    rm -rf auto-pairs-master
    rm master.zip
    
    echo
    echo "Auto-pairs installed"
    echo
}

# function to install solazired theme
installSolarized(){
    mkdir ~/.vim/colors
    wget http://ethanschoonover.com/solarized/files/solarized.zip

    unzip solarized.zip

    cp solarized/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/
    rm -rf solarized
    rm solarized.zip
    
    echo
    echo "Solarized installed"
    echo
}

# configure vim
confVim(){
    cp .vimrc ~/

    echo
    echo "Vim configured"
    echo
}

