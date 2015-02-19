#!/bin/bash

# for time being, function files need to be called here to prevent errors
source updateSystem.sh
source install.sh
# print the menu 
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
    echo "3. Install system updates"
    echo "4. Create filesystem structure"
    echo "5. Exit"
    echo

    # ask user input
    read -p "Enter your choice: " opt

    # do something for the input
    case $opt in
        1)
            installMenu
            ;;
        2)  ;;
        3)
            updateSystem
            ;;
        4)  ;;
        5)
            echo "All done"
            break 1
            ;;
        *)
            read -p "Invalid option. Press any key to continue: " randomKey
            ;;
    esac
done
}

installMenu() {
while :
do
# print menu
	clear
   	echo
   	echo "*******************"
   	echo "Install Programs"
   	echo "*******************"
   	echo "Choose what to install:"
   	echo "1. NodeJS and npm"
	echo "2. Apache"
   	echo "3. Exit"
   	echo

    	# ask user input
    	read -p "Enter your choice: " opt
	
	    # do something for the input
	    case $opt in
	        1)
	            installNode
	            ;;
		2)
		    installApache
		    ;;
	        3)
	            echo "All done"
	            break 1
	            ;;
	        *)
	          read -p "Invalid option. Press any key to continue." randomKey
	  ;;
    esac
done
}
