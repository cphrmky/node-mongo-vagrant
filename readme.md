#Node.js / Mongodb / Ubuntu 12.04 Vagrant Box

###How to Use
1. Download and install VirtualBox by [clicking here](https://www.virtualbox.org/wiki/Downloads)
2. Download and install Vagrant by [clicking here](http://downloads.vagrantup.com/)
3. Clone this repository.
4. `cd node-mongo-vagrant/`
5. [ If your host machine has the resources edit Vagrantfile and increase allocated memory and cpu for the VM ]
6. `vagrant up`
7. Grab a cup of coffee while you wait for the server to download and install. This will take a little while depending on your internet connection.

After a successful `vagrant up` you can `vagrant ssh` to login. 

Running `sudo node /var/www/default/server.js` on the vagrant machine will fire up the sample server. 

Visiting 33.33.33.10 in your browser while the server is running should render a Hello World.

###Further Reading
- [Vagrant Documentation](http://docs.vagrantup.com/v2/getting-started/index.html)
- [Node.js](http://nodejs.org)
- [MongoDB/10Gen](http://mongodb.org)