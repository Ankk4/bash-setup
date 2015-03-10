#!/bin/bash

# update system 
updateSystem(){
    sudo apt-get update
    sudo apt-get upgrade
    
    echo
    read -p "All updates have been installed. Press any key to continue." readRandom
    echo
}
