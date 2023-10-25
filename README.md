# Requirements

Make sure that you have the following installed:
- [node](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-18-04) 
- npm 
- [MongoDB](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/) and start the mongodb service with `sudo service mongod start`

## Navigate to the Client Folder 
 `cd client`

## Run the folllowing command to install the dependencies 
 `npm install`

## Run the folllowing to start the app
 `npm start`

## Open a new terminal and run the same commands in the backend folder
 `cd ../backend`

 `npm install`

 `npm start`

 ### Go ahead and add a product (note that the price field only takes a numeric input)

# Alternatively: 

You can spin up docker microservices, which includes client, backend, and a mongo database, using: `docker compose up --build`

open the application on localhost:3000

## For Managing VM using Ansible:

Ensure you have Vagrant and a VM provider (Virtualbox) installed, you can use the official website:
 - [install vagrant] (https://developer.hashicorp.com/vagrant/docs/installation)
 - [Install Ansible] (https://medium.com/@kadimasam/install-ansible-on-ubuntu-22-04-f5152edcbdce)

* Once you are set up, you only need to run `vagrant up` to spin your VM, and `vagrant provision` will execute the playbook on yor vm from your machine
* Alternatively, you can execute the playbook with something like `ansible-playbook playbook.yaml`
* Confirm that you can access the application on localhost:3000, and test persistence


 
