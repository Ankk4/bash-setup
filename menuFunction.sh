#!/bin/bash

printMenu(){
while :
do
    # print menu
    clear
    echo
    echo "*************"
    echo "Main menu"
    echo "*************"
    echo "Choose what to do:"
    echo "1. Install programs"
    echo "2. Install configs"
    echo "3. Create filesystem structure"
    echo "4. Exit"
    echo

    # ask user input
    read -p "Enter your choice: " opt

    # do something for the input

done
}
