## Explanations

# Choice of the base image on which to build each container
node:16.7.0-alpine is very small and the image occupies less than 30O MB (146MB in the case of backend, and 298 in the case of client). 

# Dockerfile directives used in the creation and running of each container.

Similar directives used in two separate dockerfiles for ip2_client and ip2_backend. Below are directives for ip2_backend.

* FROM node:16.7.0-alpine
* LABEL maintainer="Calvin Kodalo <ckodalo@gmail.com>"
* WORKDIR /myapp/backend
* COPY . .
* RUN npm install 
* CMD ["npm", "start"]

# Docker-compose Networking (Application port allocation and a bridge network implementation) where necessary.
 
 services are mapped to the host as follows:

* 3000:3000
* 5000:5000
* 8000:27017

# Docker-compose volume definition and usage (where necessary).
* a volume (mongo-persistent-storage) is defined in the configuration, and is used in the mongo service

# Git workflow used to achieve the task.
* basic workflow was used for this project, no other branches apart from main.

# Successful running of the applications and if not, debugging measures applied.

* applications work as expected, with all microservices triggered by sudo docker compose up, persistence is also good.

# Good practices such as Docker image tag naming standards for ease of identification of images and containers. 

* both images (client, backend) tagged 1.0.0 indicating the very first version with no minimal or major changes yet.
  
# There is a screenshot of your deployed image on DockerHub, clearly showing the version of the image

* ip2_client:
  
![ip2 client](https://github.com/23po/NodejsExpressApiMongodbE-commerceFeatureProject/assets/48943229/ae71a249-14fd-4365-9d43-2e8357c0f4af)

* ip2_backend:
  
![ip2_backendwithTag](https://github.com/23po/NodejsExpressApiMongodbE-commerceFeatureProject/assets/48943229/dcb1e475-afe8-4a18-8d0d-fc96b9679320)
