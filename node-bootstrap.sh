#!/usr/bin/env bash

# Get root up in here
sudo su

# Just a simple way of checking if you we need to install everything
if [ ! -d "/var/www" ]
then
    # Add mongo to apt
    apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
    echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/10gen.list

    # Update and begin installing some utility tools
    apt-get -y update
    apt-get install -y python-software-properties
    apt-get install -y vim git subversion curl
    apt-get install -y memcached build-essential

    # Install latest stable version of mongo
    apt-get install mongodb-10gen

    # Build latest node.js from source
    cd /tmp
    git clone https://github.com/joyent/node.git
    cd node
    ./configure
    make
    make install

    # Symlink our host www to the guest /var/www folder
    ln -s /vagrant/www /var/www

    # install express yo
    npm install express

    # Victory!
    echo "You're all done! node.js is installed, mongodb is installed, express is installed, you've got a stubbed out server.js sitting in /var/www/default/ and you can access this machine at 33.33.33.10 ( like in your browser ) .  So \`vagrant ssh\` and then \`node /var/www/default/server.js\` to get up and running. "

fi
