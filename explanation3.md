## Kubernetes Objects

 * 2 Pods, 1 containerizing the node frontend and backend, and 2 for the db
 * 1 StatefulSet for MongoDb with a template defining the 1 MongoDb pod
 * Internal Service
 * External Service (LoadBalancer)

## Exposure to the Internet

 * An External Service of type LoadBalancer was selected with `ecommerce-external-service.yaml` as the manifest

## Persistent Storage

 * Storage persists on deletion of the mongoDb node, with persistent volume claim (PVC) of size 1gb defined in the statefulSet

## Git Worflow

* A forking workflow wa soriginally employed for this project. The forked project is developed on a basic workflow, with direct changes to the files on the master branch

## Successfull Running Application

* Application has been tested and found to be running well, with persistence, on a mobile and laptop device. The url is http://104.199.195.41:3000/

## Docker Image Tagging

* The backend image created in ip2 `ckodalo/ip2_backend:1.0.0` was sufficient. The client image was revised to `ckodalo/ip2_client:1.0.1` and the finally `ckodalo/ip2_client:1.0.2`