## Explanations

# Choice of the base image on which to build each container
node:16.7.0-slim is very small at 362MB but it still does the job. 

# Dockerfile directives used in the creation and running of each container.

* FROM node:16.7.0-slim => selected base image with minimal packages (362 MB)
* LABEL maintainer="Calvin Kodalo <ckodalo@gmail.com>" => the entity responsible for this image
* WORKDIR /myapp/backend => this is the working directory in the container
* COPY . . => the context directory of the host will be copied into the WORKDIR in the container
* RUN npm install => packages will be installed in the container 
* CMD ["npm", "start"] => this starts the container

# Docker-compose Networking (Application port allocation and a bridge network implementation) where necessary.
 
 services are mapped to the host as follows:

* 3000:3000
* 5000:5000
* 8000:27017

# Docker-compose volume definition and usage (where necessary).
* a volume (mongo-persistent-storage) is defined in the configuration, and is used in the mongo service

# Git workflow used to achieve the task.
* basic workflow

# Successful running of the applications and if not, debugging measures applied.
* application works as expected, with all services triggered by sudo docker compose up
# Good practices such as Docker image tag naming standards for ease of identification of images and containers. 
# There is a screenshot of your deployed image on DockerHub, clearly showing the version of the image
