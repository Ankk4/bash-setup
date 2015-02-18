#!/bin/bash

# Install nodejs
installNode(){
	# Add personal package, more up to date than standard ubuntu.
	curl -sL https://deb.nodesource.com/setup | sudo bash -
	# Install node and accept all updates (-y)
	sudo apt-get install -y nodejs

}
