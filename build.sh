#!/bin/bash

# This will fail unless you are logged into DockerHub
# Use this command to login: docker login --username=joelbest
docker build . -t joelbest/engg3130-jupyter-docker:latest --no-cache || exit
docker push joelbest/engg3130-jupyter-docker:latest
