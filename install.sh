#!/bin/bash

# Install nodejs
installNode(){
	hash node &> /dev/null
	if [ $? -eq 0 ]; then
		read -p "Nodejs is already installed. Press any key to continue." rk
	else
		# Add personal package, more up to date than standard ubuntu.
		curl -sL https://deb.nodesource.com/setup | sudo bash -
	
		# Install node and accept all updates (-y)
		sudo apt-get install -y nodejs

		read -p "Node installed. Press any key to continue." rk
	fi
}

installApache(){
	hash apache &> /dev/null
	if [ $? -eq 0 ]; then
		read -p "Apache is already installed. Press any key to continue." rk
	else
		sudo apt-get install -y apache2
		sudo apt-get install php5 libapache2-mod-php5
		sudo service restart apache2
		read -p "Apache installed. Press any key to continue" rdk		
	fi
}

installMysql(){
	type mysql >/dev/null 2>&1
	if [ $? -eq 0 ]; then
		read -p "Mysql-server is already installed. Press any key to continue." rk
	else
		sudo apt-get install mysql-server
		mysql -u root -p
	fi
}

installMongo(){
	type mongo >/deb/null 2>&1
	if [ $? -eq 0 ]; then
		read -p "MongoDB is already installed. Press any key to continue." rk
	else
		sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
		echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.lis
		sudo apt-get update
		sudo apt-get install -y mongodb-org
		sudo service mongod start
		#Onnistuiko oikein
		#Default port 27017
		cat /var/log/mongodb/mongod.log
	fi
}
