# Playbook Organization
1. The pre - tasks defines tasks for installations the vm will need to be intialized with, so as to support the rest of the tasks to occur.
2. We refactored the code so the tasks are split into three roles; mongo, client, and backend, each representing a container that will run in the vm.
3. For each role, we define 2 tasks, we build the image from the local Dockerfile first, then spin the container.
4. For the mongo container, the image will be pulled from dockerhub before the container is run.
5. The key ansible modules used are docker_image which supports building images, and docker_container, which runs containers
