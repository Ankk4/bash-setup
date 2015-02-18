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
    case $opt in
        1)
            #call function here
             ;;
        2) ;;
        3) ;;
        4)
            echo "All done"
            break 1
            ;;
        *)
            read -p "Invalid option. Press any key to continue: " randomKey
            ;;
    esac
done
}
