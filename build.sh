#!/bin/bash

DATE=$(date +%Y-%m-%dT%H%M%S%z)
# This will fail unless you are logged into DockerHub
# Use this command to login: docker login --username=joelbest
docker build . -t joelbest/engg3130-jupyter-docker:latest -t joelbest/engg3130-jupyter-docker:$DATE --no-cache || exit
docker push joelbest/engg3130-jupyter-docker:latest
docker push joelbest/engg3130-jupyter-docker:$DATE
